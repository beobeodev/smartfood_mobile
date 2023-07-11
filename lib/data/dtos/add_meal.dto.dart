import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/common/enums/meal_type.enum.dart';
import 'package:smarthealthy/data/models/meal.model.dart';

part 'add_meal.dto.freezed.dart';
part 'add_meal.dto.g.dart';

@Freezed(toJson: true, fromJson: false)
class AddMealDTO with _$AddMealDTO {
  AddMealDTO._();

  @JsonSerializable(explicitToJson: true, createFactory: false)
  factory AddMealDTO({
    @JsonKey(includeFromJson: false, includeToJson: false)
        required DateTime date,
    required MealType typeOfMeal,
    required List<MealModel> dishes,
  }) = _AddMealDTO;
}
