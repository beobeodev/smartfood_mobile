part of 'home.bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    List<RecipeModel>? recommendedRecipes,
    @Default(QueryStatus.loading) QueryStatus status,
  }) = _HomeState;
}
