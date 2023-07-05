part of 'meal_detail.bloc.dart';

@freezed
class MealDetailEvent with _$MealDetailEvent {
  const factory MealDetailEvent.started() = _Started;
}
