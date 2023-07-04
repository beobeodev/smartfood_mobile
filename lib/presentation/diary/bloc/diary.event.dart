part of 'diary.bloc.dart';

@freezed
class DiaryEvent with _$DiaryEvent {
  const factory DiaryEvent.getByDay(DateTime date) = _GetByDay;
  const factory DiaryEvent.addMeal(MealModel meal, MealType type) = _AddMeal;
}
