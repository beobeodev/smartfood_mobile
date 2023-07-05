import 'package:freezed_annotation/freezed_annotation.dart';

part 'submit_recipe_rating.dto.freezed.dart';
part 'submit_recipe_rating.dto.g.dart';

@Freezed(fromJson: false, toJson: true)
class SubmitRecipeRatingDTO with _$SubmitRecipeRatingDTO {
  factory SubmitRecipeRatingDTO({
    required int value,
    @JsonKey(includeToJson: false) required String id,
  }) = _SubmitRecipeRatingDTO;
}
