import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/data/models/category.model.dart';
import 'package:smarthealthy/data/models/cuisine.model.dart';
import 'package:smarthealthy/data/models/level.model.dart';

part 'recipe.model.freezed.dart';
part 'recipe.model.g.dart';

@Freezed(toJson: false)
class RecipeModel with _$RecipeModel {
  factory RecipeModel({
    required String id,
    required String name,
    required LevelModel level,
    required CategoryModel category,
    required CuisineModel cuisine,
    required String description,
  }) = _RecipeModel;

  factory RecipeModel.fromJson(Map<String, dynamic> json) =>
      _$RecipeModelFromJson(json);
}
