part of 'calorie_measure.bloc.dart';

@freezed
class CalorieMeasureState with _$CalorieMeasureState {
  const factory CalorieMeasureState.initial() = _Initial;
  const factory CalorieMeasureState.loading() = _Loading;
  const factory CalorieMeasureState.success(NutritionWrapper nutrition) =
      _Success;
  const factory CalorieMeasureState.failure() = _Failure;
}
