part of 'ingredient_detection.bloc.dart';

@freezed
class IngredientDetectionState with _$IngredientDetectionState {
  const factory IngredientDetectionState({
    @Default(QueryStatus.loading) QueryStatus status,
    @Default({}) Map<String, RecognitionWrapper> recognitionResult,
  }) = _IngredientDetectionState;
}
