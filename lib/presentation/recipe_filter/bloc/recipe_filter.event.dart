part of 'recipe_filter.bloc.dart';

@freezed
class RecipeFilterEvent with _$RecipeFilterEvent {
  const factory RecipeFilterEvent.started() = _Started;
}
