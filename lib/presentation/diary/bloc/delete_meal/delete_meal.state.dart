part of 'delete_meal.bloc.dart';

@freezed
class DeleteMealState with _$DeleteMealState {
  const factory DeleteMealState.initial() = _Initial;
  const factory DeleteMealState.loading() = _Loading;
  const factory DeleteMealState.success(String mealId, MealType type) =
      _Success;
  const factory DeleteMealState.error() = _Error;
}
