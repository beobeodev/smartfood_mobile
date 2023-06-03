part of 'recipe_filter.bloc.dart';

@freezed
class RecipeFilterEvent with _$RecipeFilterEvent {
  const factory RecipeFilterEvent.started() = _Started;
  const factory RecipeFilterEvent.reset() = _Reset;
  const factory RecipeFilterEvent.toggleCategory({
    required bool isSelected,
    required int index,
  }) = _ToggleCategory;
  const factory RecipeFilterEvent.toggleLevel({
    required bool isSelected,
    required int index,
  }) = _ToggleLevel;
  const factory RecipeFilterEvent.toggleCuisine({
    required bool isSelected,
    required int index,
  }) = _ToggleCuisine;
}
