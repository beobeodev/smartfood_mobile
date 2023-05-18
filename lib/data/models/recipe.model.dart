import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartfood/common/constants/enums/recipe_level.enum.dart';

part 'recipe.model.freezed.dart';
part 'recipe.model.g.dart';

@Freezed(toJson: false)
class RecipeModel with _$RecipeModel {
  factory RecipeModel({
    required String id,
    required String name,
    required RecipeLevel level,
    required String description,
  }) = _RecipeModel;

  factory RecipeModel.fromJson(Map<String, dynamic> json) =>
      _$RecipeModelFromJson(json);
}
