part of 'search_recipe.bloc.dart';

@freezed
class SearchRecipeState with _$RecipeListState {
  const factory SearchRecipeState({
    required QueryDataStatusDTO queryStatus,
    List<RecipeModel>? recipes,
    required QueryRecipesDTO queryDto,
  }) = _RecipeListState;
}
