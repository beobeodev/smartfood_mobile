part of 'add_meal.bloc.dart';

@freezed
class AddMealState with _$AddMealState {
  const factory AddMealState.initial() = _Initial;
  const factory AddMealState.loading() = _Loading;
  const factory AddMealState.success(AddMealDTO mealDto) = _Success;
  const factory AddMealState.failure() = _Failure;
}
