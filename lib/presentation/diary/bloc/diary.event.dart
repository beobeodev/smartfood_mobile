part of 'diary.bloc.dart';

@freezed
class DiaryEvent with _$DiaryEvent {
  const factory DiaryEvent.getByDay({DateTime? date}) = _GetByDay;
  const factory DiaryEvent.addMeals(List<MealModel> meals, MealType type) =
      _AddMeals;
  const factory DiaryEvent.deleteMeal(String mealId, MealType type) =
      _DeleteMeal;
  const factory DiaryEvent.addPractice(DiaryModel newDiary) = _AddPractice;
  const factory DiaryEvent.refresh() = _Refresh;
}
