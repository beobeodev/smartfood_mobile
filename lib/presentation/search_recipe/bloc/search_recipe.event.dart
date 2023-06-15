part of 'search_recipe.bloc.dart';

@freezed
class SearchRecipeEvent with _$RecipeListEvent {
  const factory SearchRecipeEvent.getByIngredients(List<String> ingredientIds) =
      _GetByIngredients;
  const factory SearchRecipeEvent.getAll({String? searchKey}) = _GetAll;
  const factory SearchRecipeEvent.refresh() = _Refresh;
  const factory SearchRecipeEvent.loadMore() = _LoadMore;
  const factory SearchRecipeEvent.applyFilter(List<RecipeFilterDTO> filters) =
      _ApplyFilter;
}
