part of 'search_recipe.bloc.dart';

@freezed
class SearchRecipeState with _$SearchRecipeState {
  const factory SearchRecipeState({
    required QueryDataInfo queryInfo,
    List<RecipeModel>? recipes,
    required QueryRecipesDTO queryDto,
  }) = _SearchRecipeState;
}
