part of 'calorie_measure.bloc.dart';

@freezed
class CalorieMeasureEvent with _$CalorieMeasureEvent {
  const factory CalorieMeasureEvent.calculateNutrition(
    UpdateUserNutritionDTO userNutrition,
  ) = _CalculateNutrition;
}
