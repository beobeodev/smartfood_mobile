import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/data/models/recipe.model.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';

part 'meal.model.freezed.dart';
part 'meal.model.g.dart';

@Freezed(toJson: false)
class MealModel with _$MealModel {
  const MealModel._();

  factory MealModel({
    String? id,
    required RecipeModel recipe,
    required double kcal,
    required double fat,
    required double carbs,
    required double protein,
    @Default(1) int totalPeople,
  }) = _MealModel;

  factory MealModel.fromJson(Map<String, dynamic> json) =>
      _$MealModelFromJson(json);

  Map<String, dynamic> toJson() {
    return {'recipeId': recipe.id, 'totalPeople': totalPeople};
  }

  int get totalCalorie => (kcal / totalPeople).round();
  int get totalFat => (fat / totalPeople).round();
  int get totalCarbs => (carbs / totalPeople).round();
  int get totalProtein => (protein / totalPeople).round();

  String get kcalString => '$totalCalorie kcal';
  String get fatString => '${LocaleKeys.macros_fat.tr()}: ${totalFat}g';
  String get carbsString => '${LocaleKeys.macros_carbs.tr()}: ${totalCarbs}g';
  String get proteinString =>
      '${LocaleKeys.macros_protein.tr()}: ${totalProtein}g';
}
