part of 'add_meal.bloc.dart';

@freezed
class AddMealEvent with _$AddMealEvent {
  const factory AddMealEvent.started() = _Started;
}
