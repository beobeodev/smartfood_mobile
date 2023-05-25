part of 'recipe_list.bloc.dart';

@freezed
class RecipeListEvent with _$RecipeListEvent {
  const factory RecipeListEvent.get(List<String> ingredientIds) = _Get;
}
