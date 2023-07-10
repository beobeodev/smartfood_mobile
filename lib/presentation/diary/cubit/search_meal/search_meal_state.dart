part of 'search_meal_cubit.dart';

@freezed
class SearchMealState with _$SearchMealState {
  const factory SearchMealState({
    required QueryDataInfo info,
    @Default([]) List<MealModel> meals,
    required QueryMealsDTO dto,
  }) = _SearchMealState;
}
