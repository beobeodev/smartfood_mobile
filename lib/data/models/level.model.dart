import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/common/constants/enums/recipe_level.enum.dart';

part 'level.model.freezed.dart';
part 'level.model.g.dart';

@Freezed(toJson: false)
class LevelModel with _$LevelModel {
  const factory LevelModel({
    required String id,
    required RecipeLevel name,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
        isChosen,
  }) = _LevelModel;

  factory LevelModel.fromJson(Map<String, dynamic> json) =>
      _$LevelModelFromJson(json);
}
