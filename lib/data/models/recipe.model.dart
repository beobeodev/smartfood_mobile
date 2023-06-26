import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/data/models/category.model.dart';
import 'package:smarthealthy/data/models/cuisine.model.dart';
import 'package:smarthealthy/data/models/level.model.dart';
import 'package:smarthealthy/data/models/media.model.dart';
import 'package:smarthealthy/data/models/quantification.model.dart';
import 'package:smarthealthy/data/models/recipe_step.model.dart';

part 'recipe.model.freezed.dart';
part 'recipe.model.g.dart';

@Freezed(toJson: false)
class RecipeModel with _$RecipeModel {
  const RecipeModel._();

  factory RecipeModel({
    required String id,
    required String name,
    String? description,
    required LevelModel level,
    required CategoryModel category,
    required CuisineModel cuisine,
    List<QuantificationModel>? quantification,
    List<RecipeStepModel>? recipeStep,
    List<MediaModel>? media,
  }) = _RecipeModel;

  @JsonKey(includeFromJson: false, includeToJson: false)
  String get avatar =>
      media?[0].url ??
      'https://www.happyeater.com/images/default-food-image.jpg';

  factory RecipeModel.fromJson(Map<String, dynamic> json) =>
      _$RecipeModelFromJson(json);
}
