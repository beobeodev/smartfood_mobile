import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/common/enums/query_status.enum.dart';
import 'package:smarthealthy/common/extensions/date_time.extension.dart';
import 'package:smarthealthy/data/dtos/add_meal.dto.dart';
import 'package:smarthealthy/data/models/diary.model.dart';

part 'diary.event.dart';
part 'diary.state.dart';
part 'diary.bloc.freezed.dart';

class DiaryBloc extends Bloc<DiaryEvent, DiaryState> {
  DiaryBloc() : super(DiaryState(currentDate: DateTime.now())) {
    on<DiaryEvent>((event, emit) {
      event.map(
        getByDay: (getByDay) => _getByDay(getByDay, emit),
        addDish: (addDish) => _addDish(addDish, emit),
      );
    });

    add(_GetByDay(state.currentDate));
  }

  void _getByDay(_GetByDay event, Emitter<DiaryState> emit) {
    emit(state.copyWith(status: QueryStatus.success, currentDate: event.date));
  }

  void _addDish(_AddDish event, Emitter<DiaryState> emit) {
    final index = state.diaries.indexWhere(
      (element) => element.date.isSameDateWith(state.currentDate),
    );

    if (index == -1) {
      emit(
        state.copyWith(
          diaries: [
            ...state.diaries,
            DiaryModel(
              date: state.currentDate,
              dishes: event.mealDto.dishes,
            ),
          ],
        ),
      );
    } else {
      final currentDiary = state.diaries[index];

      final newDiary = currentDiary.copyWith(
        dishes: [...(currentDiary.dishes ?? []), ...event.mealDto.dishes],
      );

      final newDiaries = List.of(state.diaries);
      newDiaries[index] = newDiary;

      emit(state.copyWith(diaries: newDiaries));
    }
  }
}
