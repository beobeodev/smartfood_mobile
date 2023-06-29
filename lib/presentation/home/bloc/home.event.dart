part of 'home.bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getRecommendedRecipes() = _GetRecommendedRecipes;
}
