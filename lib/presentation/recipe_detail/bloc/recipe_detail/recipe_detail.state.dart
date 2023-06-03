part of 'recipe_detail.bloc.dart';

@freezed
class RecipeDetailState with _$RecipeDetailState {
  const factory RecipeDetailState.loading() = _Loading;
  const factory RecipeDetailState.success({required final RecipeModel recipe}) =
      _Success;
  const factory RecipeDetailState.failure() = _Failure;
}
