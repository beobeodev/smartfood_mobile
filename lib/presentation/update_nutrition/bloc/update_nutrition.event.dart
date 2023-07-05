part of 'update_nutrition.bloc.dart';

@freezed
class UpdateNutritionEvent with _$UpdateNutritionEvent {
  const factory UpdateNutritionEvent.calculateNutrition(
    UpdateUserNutritionDTO userNutrition,
  ) = _CalculateNutrition;
}
