import 'dart:io';
import 'package:image/image.dart' as img;
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/common/constants/enums/query_status.enum.dart';
import 'package:smarthealthy/common/helpers/ingredient_detector.dart';
import 'package:smarthealthy/data/models/recognition.model.dart';

part 'ingredient_detection.event.dart';
part 'ingredient_detection.state.dart';
part 'ingredient_detection.bloc.freezed.dart';

class IngredientDetectionBloc
    extends Bloc<IngredientDetectionEvent, IngredientDetectionState> {
  final IngredientDetector _ingredientDetector;

  IngredientDetectionBloc({required IngredientDetector ingredientDetector})
      : _ingredientDetector = ingredientDetector,
        super(const IngredientDetectionState()) {
    on<IngredientDetectionEvent>((events, emit) {
      events.map(
        started: (started) => _onStarted(started, emit),
      );
    });
  }

  void _onStarted(
    _IngredientDetectionStarted event,
    Emitter<IngredientDetectionState> emit,
  ) {
    emit(const IngredientDetectionState());
    final Map<String, RecognitionWrapper> result = {};

    for (var imagePath in event.imagePaths) {
      result.addAll({
        imagePath: _ingredientDetector
            .predict(img.decodeImage(File(imagePath).readAsBytesSync())!),
      });
    }

    emit(
      IngredientDetectionState(
        status: QueryStatus.success,
        recognitionResult: result,
      ),
    );
  }
}
