import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/data/models/media.model.dart';

part 'ingredient.model.freezed.dart';
part 'ingredient.model.g.dart';

@Freezed(toJson: false)
class IngredientModel with _$IngredientModel {
  const IngredientModel._();

  @JsonSerializable(createToJson: false)
  const factory IngredientModel({
    required String id,
    @JsonKey(defaultValue: '') required String name,
    @JsonKey(defaultValue: '') required String slug,
    List<MediaModel>? media,
  }) = _IngredientModel;

  factory IngredientModel.fromJson(Map<String, Object?> json) =>
      _$IngredientModelFromJson(json);

  @JsonKey(includeFromJson: false, includeToJson: false)
  String get avatar =>
      media?[0].url ??
      'https://user-images.githubusercontent.com/24848110/33519396-7e56363c-d79d-11e7-969b-09782f5ccbab.png';
}
