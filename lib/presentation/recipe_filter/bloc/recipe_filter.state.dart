part of 'recipe_filter.bloc.dart';

@freezed
class RecipeFilterState with _$RecipeFilterState {
  const factory RecipeFilterState({
    @Default([]) List<CategoryModel> categories,
    @Default([]) List<CuisineModel> cuisines,
    @Default([]) List<LevelModel> levels,
  }) = _RecipeFilterState;
}
