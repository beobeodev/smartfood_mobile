part of 'search_recipe.bloc.dart';

@freezed
class SearchRecipeEvent with _$SearchRecipeEvent {
  const factory SearchRecipeEvent.getByIngredients(
    List<IngredientModel> ingredients,
  ) = _GetByIngredients;
  const factory SearchRecipeEvent.getAll({String? searchKey}) = _GetAll;
  const factory SearchRecipeEvent.refresh() = _Refresh;
  const factory SearchRecipeEvent.loadMore() = _LoadMore;
  const factory SearchRecipeEvent.addIngredient(IngredientModel ingredient) =
      _AddIngredient;
  const factory SearchRecipeEvent.removeIngredient(IngredientModel ingredient) =
      _RemoveIngredient;
  const factory SearchRecipeEvent.applyFilters(List<RecipeFilterDTO> filters) =
      _ApplyFilters;
}
