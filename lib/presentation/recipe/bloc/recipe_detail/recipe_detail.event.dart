part of 'recipe_detail.bloc.dart';

@freezed
class RecipeDetailEvent with _$RecipeDetailEvent {
  const factory RecipeDetailEvent.started() = _Started;
}
