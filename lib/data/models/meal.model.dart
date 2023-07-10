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
  }) = _MealModel;

  factory MealModel.fromJson(Map<String, dynamic> json) =>
      _$MealModelFromJson(json);

  String get kcalString => '${kcal.round()} kcal';
  String get fatString => '${LocaleKeys.macros_fat.tr()}: ${fat.round()}g';
  String get carbsString =>
      '${LocaleKeys.macros_carbs.tr()}: ${carbs.round()}g';
  String get proteinString =>
      '${LocaleKeys.macros_protein.tr()}: ${protein.round()}g';
}
