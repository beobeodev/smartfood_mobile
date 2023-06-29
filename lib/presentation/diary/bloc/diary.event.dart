part of 'diary.bloc.dart';

@freezed
class DiaryEvent with _$DiaryEvent {
  const factory DiaryEvent.getByDay(DateTime date) = _GetByDay;
  const factory DiaryEvent.addDish(AddMealDTO mealDto) = _AddDish;
}
