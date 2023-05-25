part of 'recipe_step.bloc.dart';

@freezed
class RecipeStepEvent with _$RecipeStepEvent {
  const factory RecipeStepEvent.started() = _Started;
}
