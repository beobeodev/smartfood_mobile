part of 'delete_meal.bloc.dart';

@freezed
class DeleteMealEvent with _$DeleteMealEvent {
  const factory DeleteMealEvent.submit(String mealId, MealType type) = _Submit;
}
