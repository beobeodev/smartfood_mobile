part of 'recipe_list.bloc.dart';

@freezed
class RecipeListState with _$RecipeListState {
  const factory RecipeListState.loading() = _Loading;
  const factory RecipeListState.success(List<RecipeModel> recipes) = _Success;
  const factory RecipeListState.failure() = _Failure;
}
