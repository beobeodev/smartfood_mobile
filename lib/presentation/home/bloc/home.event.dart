part of 'home.bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getRecommendedRecipes() = _GetRecommendedRecipes;
  const factory HomeEvent.getTenRecipes() = _GetTenRecipes;
}
