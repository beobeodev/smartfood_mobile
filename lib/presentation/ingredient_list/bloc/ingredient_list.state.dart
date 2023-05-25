part of 'ingredient_list.bloc.dart';

@freezed
class IngredientListState with _$IngredientListState {
  const factory IngredientListState({
    @Default([]) List<IngredientModel> ingredients,
  }) = _IngredientListState;
}
