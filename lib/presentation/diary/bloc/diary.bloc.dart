import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/common/enums/meal_type.enum.dart';
import 'package:smarthealthy/common/enums/query_status.enum.dart';
import 'package:smarthealthy/common/extensions/date_time.extension.dart';
import 'package:smarthealthy/data/models/diary.model.dart';
import 'package:smarthealthy/data/models/meal.model.dart';
import 'package:smarthealthy/data/repositories/diary.repository.dart';

part 'diary.event.dart';
part 'diary.state.dart';
part 'diary.bloc.freezed.dart';

class DiaryBloc extends Bloc<DiaryEvent, DiaryState> {
  final DiaryRepository _diaryRepository;

  DiaryBloc({required DiaryRepository diaryRepository})
      : _diaryRepository = diaryRepository,
        super(DiaryState(currentDate: DateTime.now())) {
    on<DiaryEvent>((event, emit) async {
      await event.map(
        getByDay: (getByDay) => _onGetByDay(getByDay, emit),
        addMeal: (addMeal) => _onAddMeal(addMeal, emit),
      );
    });

    add(_GetByDay(state.currentDate));
  }

  Future<void> _onGetByDay(_GetByDay event, Emitter<DiaryState> emit) async {
    emit(state.copyWith(currentDate: event.date, status: QueryStatus.loading));

    try {
      if (state.currentDiary != null) {
        return emit(state.copyWith(status: QueryStatus.success));
      }

      final newDiary = await _diaryRepository.getDiary(state.currentDate);

      emit(
        state.copyWith(
          diaries: [...state.diaries, newDiary],
          status: QueryStatus.success,
        ),
      );
    } catch (err) {
      emit(state.copyWith(status: QueryStatus.error));
    }
  }

  Future<void> _onAddMeal(_AddMeal event, Emitter<DiaryState> emit) async {
    final currentDiaries = List.of(state.diaries);

    final currentDiary = currentDiaries.firstWhere(
      (element) => element.date.isSameDateWith(state.currentDate),
    );

    switch (event.type) {
      case MealType.breakfast:
        currentDiary.breakfast.add(event.meal);
        break;
      case MealType.lunch:
        currentDiary.lunch.add(event.meal);
        break;
      case MealType.dinner:
        currentDiary.dinner.add(event.meal);
        break;
    }

    emit(state.copyWith(diaries: currentDiaries));
  }
}
