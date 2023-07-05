part of 'recipe_rating.bloc.dart';

@freezed
class RecipeRatingState with _$RecipeRatingState {
  const factory RecipeRatingState({
    @Default(QueryStatus.loading) QueryStatus status,
    @Default(0) int rating,
  }) = _RecipeRatingState;
}
