import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/common/helpers/nutrition_calculator.dart';
import 'package:smarthealthy/data/models/meal.model.dart';
import 'package:smarthealthy/data/models/practice.model.dart';
import 'package:smarthealthy/presentation/diary/ui_models/nutrition_wrapper.dart';

part 'diary.model.freezed.dart';
part 'diary.model.g.dart';

@Freezed(
  toJson: false,
  makeCollectionsUnmodifiable: false,
  addImplicitFinal: false,
  equal: false,
)
class DiaryModel with _$DiaryModel {
  const DiaryModel._();

  factory DiaryModel({
    required DateTime date,
    double? totalCalories,
    double? fat,
    double? carbs,
    double? protein,
    @Default([]) List<MealModel> breakfast,
    @Default([]) List<MealModel> lunch,
    @Default([]) List<MealModel> dinner,
    @Default([]) List<PracticeModel> exercises,
  }) = _DiaryModel;

  factory DiaryModel.fromJson(Map<String, dynamic> json) =>
      _$DiaryModelFromJson(json);

  @JsonKey(includeFromJson: false, includeToJson: false)
  NutritionWrapper? get nutrition =>
      (totalCalories == null || totalCalories == 0)
          ? null
          : NutritionWrapper(
              calorie: totalCalories!.round(),
              fat: NutritionCalculator.calculateFat(totalCalories!.round()),
              protein:
                  NutritionCalculator.calculateProtein(totalCalories!.round()),
              carbs: NutritionCalculator.calculateCarbs(totalCalories!.round()),
            );
}
