part of 'recipe_list.bloc.dart';

@freezed
class RecipeListState with _$RecipeListState {
  const factory RecipeListState({
    required QueryDataStatusDTO queryStatus,
    List<RecipeModel>? recipes,
    required QueryRecipesDTO queryDto,
  }) = _RecipeListState;
}
