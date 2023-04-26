part of 'ingredient_detection.bloc.dart';

@freezed
class IngredientDetectionState with _$IngredientDetectionState {
  const factory IngredientDetectionState.initial() = _Initial;
  const factory IngredientDetectionState.loading() = _Loading;
  const factory IngredientDetectionState.success(
    Map<String, List<Recognition>> recognitionResult,
  ) = _Success;
}
