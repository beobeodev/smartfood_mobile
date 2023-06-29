part of 'add_meal.bloc.dart';

@freezed
class AddMealEvent with _$AddMealEvent {
  const factory AddMealEvent.add(AddMealDTO addMealDTO) = _Add;
}
