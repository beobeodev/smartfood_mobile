import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/common/enums/meal_type.enum.dart';

part 'meal.model.freezed.dart';
part 'meal.model.g.dart';

@Freezed(toJson: false)
class MealModel with _$MealModel {
  factory MealModel({
    required MealType type,
    required String name,
    required int calorie,
    required int carbs,
    required int protein,
    required int fat,
  }) = _MealModel;

  factory MealModel.fromJson(Map<String, dynamic> json) =>
      _$MealModelFromJson(json);
}
