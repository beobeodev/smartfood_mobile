part of 'recipe_filter.bloc.dart';

@Freezed(equal: true)
class RecipeFilterState with _$RecipeFilterState {
  const factory RecipeFilterState({
    @Default([]) List<CategoryModel> categories,
    @Default([]) List<CuisineModel> cuisines,
    @Default([]) List<LevelModel> levels,
    @Default(QueryStatus.loading) QueryStatus status,
  }) = _RecipeFilterState;
}
