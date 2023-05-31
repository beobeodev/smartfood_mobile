part of 'recipe_list.bloc.dart';

@freezed
class RecipeListEvent with _$RecipeListEvent {
  const factory RecipeListEvent.getByIngredients(List<String> ingredientIds) =
      _GetByIngredients;
  const factory RecipeListEvent.getAll() = _GetAll;
  const factory RecipeListEvent.refresh() = _Refresh;
  const factory RecipeListEvent.loadMore() = _LoadMore;
}
