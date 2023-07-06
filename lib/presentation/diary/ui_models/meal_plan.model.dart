import 'package:smarthealthy/common/enums/meal_type.enum.dart';
import 'package:smarthealthy/data/models/meal.model.dart';

class MealPlanUIModel {
  final String title;
  final MealType type;
  final List<MealModel>? meals;

  MealPlanUIModel({required this.title, this.meals, required this.type});

  MealPlanUIModel copyWith({
    String? title,
    MealType? type,
    List<MealModel>? meals,
  }) {
    return MealPlanUIModel(
      title: title ?? this.title,
      type: type ?? this.type,
      meals: meals ?? this.meals,
    );
  }
}
