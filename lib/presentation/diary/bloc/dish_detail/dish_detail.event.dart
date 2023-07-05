part of 'dish_detail.bloc.dart';

@freezed
class DishDetailEvent with _$DishDetailEvent {
  const factory DishDetailEvent.started() = _Started;
}
