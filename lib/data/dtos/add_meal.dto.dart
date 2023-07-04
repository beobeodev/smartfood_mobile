import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/common/enums/meal_type.enum.dart';

part 'add_meal.dto.freezed.dart';
part 'add_meal.dto.g.dart';

@Freezed(fromJson: false, toJson: true)
class AddMealDTO with _$AddMealDTO {
  factory AddMealDTO({
    required MealType typeOfMeal,
    required List<String> recipeIds,
  }) = _AddMealDTO;
}
