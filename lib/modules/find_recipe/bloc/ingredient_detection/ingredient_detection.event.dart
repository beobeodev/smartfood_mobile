part of 'ingredient_detection.bloc.dart';

@freezed
class IngredientDetectionEvent with _$IngredientDetectionEvent {
  const factory IngredientDetectionEvent.started(
    final List<String> imagePaths,
  ) = _IngredientDetectionStarted;
}
