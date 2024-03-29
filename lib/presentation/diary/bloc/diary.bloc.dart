import 'dart:developer';

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
        addMeals: (addMeals) => _onAddMeal(addMeals, emit),
        deleteMeal: (deleteMeal) async => _onDeleteMeal(deleteMeal, emit),
        addPractice: (addPractice) async => _onAddPractice(addPractice, emit),
        refresh: (refresh) async => _onRefresh(refresh, emit),
        deletePractice: (deletePractice) async =>
            _onDeletePractice(deletePractice, emit),
      );
    });
  }

  Future<void> _onGetByDay(_GetByDay event, Emitter<DiaryState> emit) async {
    emit(
      state.copyWith(
        status: QueryStatus.loading,
        currentDate: event.date ?? state.currentDate,
      ),
    );

    try {
      final currentDiary = state.diaries.firstWhereOrNull(
        (element) => element.date.isSameDateWith(state.currentDate),
      );

      if (currentDiary != null) {
        return emit(
          state.copyWith(status: QueryStatus.success),
        );
      }

      final newDiary = await _diaryRepository.getDiary(state.currentDate);

      emit(
        state.copyWith(
          diaries: [...state.diaries, newDiary],
          status: QueryStatus.success,
        ),
      );
    } catch (err, stack) {
      log(stack.toString());

      emit(state.copyWith(status: QueryStatus.error));
    }
  }

  Future<void> _onAddMeal(_AddMeals event, Emitter<DiaryState> emit) async {
    final currentDiaries = state.diaries.map((e) => e.copyWith()).toList();

    final currentDiaryIndex = currentDiaries.indexWhere(
      (element) => element.date.isSameDateWith(state.currentDate),
    );

    final currentDiary = currentDiaries[currentDiaryIndex];

    switch (event.type) {
      case MealType.breakfast:
        currentDiary.breakfast.addAll(event.meals);
        break;
      case MealType.lunch:
        currentDiary.lunch.addAll(event.meals);
        break;
      case MealType.dinner:
        currentDiary.dinner.addAll(event.meals);
        break;
    }

    emit(state.copyWith(diaries: currentDiaries));
  }

  void _onDeleteMeal(_DeleteMeal event, Emitter<DiaryState> emit) {
    final currentDiaries = state.diaries.map((e) => e.copyWith()).toList();

    final currentDiaryIndex = currentDiaries.indexWhere(
      (element) => element.date.isSameDateWith(state.currentDate),
    );

    final currentDiary = currentDiaries[currentDiaryIndex];

    switch (event.type) {
      case MealType.breakfast:
        currentDiary.breakfast.removeWhere((item) => item.id == event.mealId);
        break;
      case MealType.lunch:
        currentDiary.lunch.removeWhere((item) => item.id == event.mealId);
        break;
      case MealType.dinner:
        currentDiary.dinner.removeWhere((item) => item.id == event.mealId);
        break;
    }

    emit(state.copyWith(diaries: currentDiaries));
  }

  void _onAddPractice(_AddPractice event, Emitter<DiaryState> emit) {
    final currentDiaries = state.diaries.map((e) => e.copyWith()).toList();

    final currentDiaryIndex = currentDiaries.indexWhere(
      (element) => element.date.isSameDateWith(state.currentDate),
    );

    currentDiaries[currentDiaryIndex] = event.newDiary;

    emit(state.copyWith(diaries: currentDiaries));
  }

  void _onDeletePractice(
    _DeletePractice event,
    Emitter<DiaryState> emit,
  ) async {
    final currentDiaries = state.diaries.map((e) => e.copyWith()).toList();

    final currentDiaryIndex = currentDiaries.indexWhere(
      (element) => element.date.isSameDateWith(state.currentDate),
    );

    currentDiaries[currentDiaryIndex]
        .exercises
        .removeWhere((element) => element.id == event.practiceId);

    emit(state.copyWith(diaries: currentDiaries));
  }

  void _onRefresh(_Refresh event, Emitter<DiaryState> emit) {
    emit(state.copyWith(diaries: []));

    add(const _GetByDay());
  }
}
