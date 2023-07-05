part of 'recipe_rating.bloc.dart';

@freezed
class RecipeRatingEvent with _$RecipeRatingEvent {
  const factory RecipeRatingEvent.submit(SubmitRecipeRatingDTO dto) = _Submit;
}
