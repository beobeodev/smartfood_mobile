import 'dart:io';
import 'package:image/image.dart' as img;
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartfood/common/helpers/ingredient_detector.dart';
import 'package:smartfood/data/models/recognition.dart';

part 'ingredient_detection.event.dart';
part 'ingredient_detection.state.dart';
part 'ingredient_detection.bloc.freezed.dart';

class IngredientDetectionBloc
    extends Bloc<IngredientDetectionEvent, IngredientDetectionState> {
  final IngredientDetector _ingredientDetector;

  IngredientDetectionBloc({required IngredientDetector ingredientDetector})
      : _ingredientDetector = ingredientDetector,
        super(const IngredientDetectionState.initial()) {
    on<IngredientDetectionEvent>((events, emit) {
      events.map(started: (started) => _onStarted(started, emit));
    });
  }

  void _onStarted(
    _IngredientDetectionStarted event,
    Emitter<IngredientDetectionState> emit,
  ) {
    emit(const IngredientDetectionState.loading());
    final Map<String, List<Recognition>> result = {};

    for (var imagePath in event.imagePaths) {
      result.addAll({
        imagePath: _ingredientDetector
            .predict(img.decodeImage(File(imagePath).readAsBytesSync())!),
      });
    }

    emit(IngredientDetectionState.success(result));
  }
}
