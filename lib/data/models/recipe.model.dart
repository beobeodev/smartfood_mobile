import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/data/models/category.model.dart';
import 'package:smarthealthy/data/models/cuisine.model.dart';
import 'package:smarthealthy/data/models/level.model.dart';
import 'package:smarthealthy/data/models/quantification.model.dart';
import 'package:smarthealthy/data/models/recipe_step.model.dart';

part 'recipe.model.freezed.dart';
part 'recipe.model.g.dart';

@Freezed(toJson: false)
class RecipeModel with _$RecipeModel {
  factory RecipeModel({
    required String id,
    required String name,
    required String description,
    required LevelModel level,
    required CategoryModel category,
    required CuisineModel cuisine,
    List<QuantificationModel>? quantification,
    List<RecipeStepModel>? recipeStep,
  }) = _RecipeModel;

  factory RecipeModel.fromJson(Map<String, dynamic> json) =>
      _$RecipeModelFromJson(json);
}
