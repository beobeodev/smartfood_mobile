import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/data/models/recipe.model.dart';

part 'meal.model.freezed.dart';
part 'meal.model.g.dart';

@Freezed(toJson: false)
class MealModel with _$MealModel {
  factory MealModel({
    required String id,
    required RecipeModel recipe,
  }) = _MealModel;

  factory MealModel.fromJson(Map<String, dynamic> json) =>
      _$MealModelFromJson(json);
}
