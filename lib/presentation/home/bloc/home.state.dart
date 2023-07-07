part of 'home.bloc.dart';

enum RecipeType { normal, recommended }

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required QueryDataInfo queryInfo,
    @Default(RecipeType.normal) RecipeType recipeType,
    List<RecipeModel>? recipes,
  }) = _HomeState;
}
