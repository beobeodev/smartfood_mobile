part of 'ingredient_list.bloc.dart';

@freezed
class IngredientListEvent with _$IngredientListEvent {
  const factory IngredientListEvent.updated(IngredientModel ingredient) =
      _Updated;
}
