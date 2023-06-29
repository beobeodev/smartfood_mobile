import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/common/enums/meal_type.enum.dart';
import 'package:smarthealthy/data/models/recipe.model.dart';

part 'add_meal.dto.freezed.dart';

@Freezed(fromJson: false)
class AddMealDTO with _$AddMealDTO {
  factory AddMealDTO({
    required MealType type,
    required List<RecipeModel> dishes,
  }) = _AddMealDTO;
}
