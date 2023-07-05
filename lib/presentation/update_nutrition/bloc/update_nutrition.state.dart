part of 'update_nutrition.bloc.dart';

@freezed
class UpdateNutritionState with _$UpdateNutritionState {
  const factory UpdateNutritionState.initial() = _Initial;
  const factory UpdateNutritionState.loading() = _Loading;
  const factory UpdateNutritionState.success(
    UserModel newUser,
    NutritionWrapper nutrition,
  ) = _Success;
  const factory UpdateNutritionState.failure() = _Failure;
}
