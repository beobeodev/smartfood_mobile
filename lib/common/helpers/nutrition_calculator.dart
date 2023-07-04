import 'package:smarthealthy/common/enums/gender_type.enum.dart';
import 'package:smarthealthy/presentation/diary/ui_models/body_info_wrapper.dart';
import 'package:smarthealthy/presentation/diary/ui_models/nutrition_wrapper.dart';

abstract class NutritionCalculator {
  static const double _caloriePerProtein = 1 / 4;
  static const double _caloriePerCarbs = 1 / 4;
  static const double _caloriePerFat = 1 / 9;

  static NutritionWrapper calculate(BodyInfoWrapper bodyInfo) {
    final double bmr;

    if (bodyInfo.gender == GenderType.male) {
      bmr = (13.397 * bodyInfo.weight) +
          (4.799 * bodyInfo.height) -
          (5.677 * bodyInfo.age) +
          88.362;
    } else {
      bmr = (9.247 * bodyInfo.weight) +
          (3.098 * bodyInfo.height) -
          (4.330 * bodyInfo.age) +
          447.593;
    }

    final int calorie = (bmr * bodyInfo.practiceIndex).round();

    return NutritionWrapper(
      calorie: calorie,
      carbs: _calculateCarbs(calorie),
      fat: _calculateFat(calorie),
      protein: _calculateProtein(calorie),
    );
  }

  static int _calculateCarbs(int calorie) {
    return (0.35 * calorie * _caloriePerCarbs).round();
  }

  static int _calculateProtein(int calorie) {
    return (0.3 * calorie * _caloriePerProtein).round();
  }

  static int _calculateFat(int calorie) {
    return (0.35 * calorie * _caloriePerFat).round();
  }
}
