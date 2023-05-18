import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient.model.freezed.dart';
part 'ingredient.model.g.dart';

@Freezed(toJson: false)
class IngredientModel with _$IngredientModel {
  @JsonSerializable(createToJson: false)
  const factory IngredientModel({
    required String id,
    required String name,
  }) = _IngredientModel;

  factory IngredientModel.fromJson(Map<String, Object?> json) =>
      _$IngredientModelFromJson(json);
}
