part of 'recipe_step.bloc.dart';

@freezed
class RecipeStepState with _$RecipeStepState {
  const factory RecipeStepState.initial() = _Initial;
  const factory RecipeStepState.loading() = _Loading;
  const factory RecipeStepState.success(List<RecipeStep> steps) = _Success;
  const factory RecipeStepState.failure() = _Failure;
}
