import 'dart:math';
import 'dart:typed_data';

import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:smartfood/common/constants/detect_model.dart';
import 'package:smartfood/data/models/recognition.dart';
import 'package:tflite_flutter/tflite_flutter.dart';
import 'package:tflite_flutter_helper/tflite_flutter_helper.dart';
import 'package:image/image.dart' as imageLib;

class IngredientDetectHelper {
  static IngredientDetectHelper? _instance;

  final Interpreter _interpreter;
  final List<List<int>> _outputShapes;
  final List<TfLiteType> _outputTypes;
  final List<String> _labels;
  final double objectScore = 0.5;
  final double classScore = 0.5;
  final double nmsScore = 0.6;

  int get numClasses => _labels.length;

  IngredientDetectHelper._({
    required Interpreter interpreter,
    required List<List<int>> outputShapes,
    required List<TfLiteType> outputTypes,
    required List<String> labels,
  })  : _interpreter = interpreter,
        _outputShapes = outputShapes,
        _outputTypes = outputTypes,
        _labels = labels;

  static Future<IngredientDetectHelper> getInstance() async {
    if (_instance == null) {
      Interpreter interpreter = await _loadModel();
      List<Tensor> outputTensors = interpreter.getOutputTensors();
      List<List<int>> outputShapes = _loadOutputShapes(outputTensors);
      List<TfLiteType> outputTypes = _loadOutputTypes(outputTensors);
      List<String> labels = await _loadLabels();

      _instance = IngredientDetectHelper._(
        interpreter: interpreter,
        outputShapes: outputShapes,
        outputTypes: outputTypes,
        labels: labels,
      );

      return _instance!;
    }

    return _instance!;
  }

  static Future<Interpreter> _loadModel() async {
    Interpreter interpreter = await Interpreter.fromAsset(
      DetectModel.name,
      options: InterpreterOptions()..threads = DetectModel.numberOfThreads,
    );

    return interpreter;
  }

  static List<List<int>> _loadOutputShapes(List<Tensor> outputTensors) {
    List<List<int>> outputShapes = [];

    for (var tensor in outputTensors) {
      outputShapes.add(tensor.shape);
    }

    return outputShapes;
  }

  static List<TfLiteType> _loadOutputTypes(List<Tensor> outputTensors) {
    List<TfLiteType> outputTypes = [];

    for (var tensor in outputTensors) {
      outputTypes.add(tensor.type);
    }

    return outputTypes;
  }

  static Future<List<String>> _loadLabels() async {
    List<String> labels = await FileUtil.loadLabels(
      DetectModel.labels,
    );

    return labels;
  }

  List<Recognition> predict(imageLib.Image image) {
    // Load and pre process image
    TensorImage inputImage = TensorImage.fromImage(image);
    final ImageProcessor imageProcessor = _getImageProcessor(inputImage);
    inputImage = imageProcessor.process(inputImage);

    // Get outputs of model
    final TensorBuffer outputLocations = TensorBufferFloat(
      _outputShapes[0],
    );
    final Map<int, Object> outputs = {
      0: outputLocations.buffer,
    };

    // Normalize input
    _interpreter.runForMultipleInputs(_normalizeInput(inputImage), outputs);

    // Get results
    final List<double> amountOfGridCells = outputLocations.getDoubleList();

    List<Recognition> recognitions = [];
    for (int i = 0; i < amountOfGridCells.length; i += (5 + numClasses)) {
      if (amountOfGridCells[4] < objectScore) continue;

      // Check class score
      final double maxClassScore = amountOfGridCells
          .sublist(
            i + 5,
            i + 5 + numClasses,
          )
          .reduce(max);
      if (maxClassScore < classScore) continue;

      // Get label index
      final int labelIndex = amountOfGridCells
          .sublist(
            i + 5,
            i + 5 + numClasses,
          )
          .indexOf(maxClassScore);

      final Rect outputRect = Rect.fromCenter(
        center: Offset(
          amountOfGridCells[i] * DetectModel.imageSize,
          amountOfGridCells[i + 1] * DetectModel.imageSize,
        ),
        width: amountOfGridCells[i + 2] * DetectModel.imageSize,
        height: amountOfGridCells[i + 3] * DetectModel.imageSize,
      );
      final Rect transformRect = imageProcessor.inverseTransformRect(
        outputRect,
        image.height,
        image.width,
      );

      recognitions.add(
        Recognition(
          id: i,
          label: _labels[labelIndex],
          score: maxClassScore,
          location: transformRect,
          imageSize: Size(image.width.toDouble(), image.height.toDouble()),
        ),
      );
    }
    final List<Recognition> nmsRecognitions =
        _getNonMaxSuppression(recognitions);

    return nmsRecognitions;
  }

  List<Recognition> _getNonMaxSuppression(List<Recognition> recognitions) {
    final List<String> recognizedLabels =
        Set<String>.from(recognitions.map((e) => e.label)).toList();

    final List<Recognition> nmsRecognitions = [];

    // for-loop all labels
    for (int k = 0; k < recognizedLabels.length; ++k) {
      // Find max confidence per class
      final HeapPriorityQueue<Recognition> recognitionQueue =
          HeapPriorityQueue<Recognition>();
      for (int i = 0; i < recognitions.length; ++i) {
        if (recognitions[i].label == _labels[k]) {
          recognitionQueue.add(recognitions[i]);
        }
      }

      // Implement non-max suppression
      while (recognitionQueue.length > 0) {
        final List<Recognition> detections = recognitionQueue.toList();
        final Recognition maxDetection = detections[0];

        nmsRecognitions.add(maxDetection);
        recognitionQueue.clear();

        for (int j = 1; j < detections.length; ++j) {
          final Recognition detection = detections[j];
          final Rect detectionLocation = detection.location;

          if (_boxIou(maxDetection.location, detectionLocation) < nmsScore) {
            recognitionQueue.add(detection);
          }
        }
      }
    }

    return nmsRecognitions;
  }

  double _boxIou(Rect a, Rect b) {
    return _boxIntersection(a, b) / _boxUnion(a, b);
  }

  double _boxIntersection(Rect a, Rect b) {
    double w = _overlap(
      (a.left + a.right) / 2,
      a.right - a.left,
      (b.left + b.right) / 2,
      b.right - b.left,
    );
    double h = _overlap(
      (a.top + a.bottom) / 2,
      a.bottom - a.top,
      (b.top + b.bottom) / 2,
      b.bottom - b.top,
    );
    if ((w < 0) || (h < 0)) {
      return 0;
    }
    double area = (w * h);
    return area;
  }

  double _boxUnion(Rect a, Rect b) {
    double i = _boxIntersection(a, b);
    double u = ((((a.right - a.left) * (a.bottom - a.top)) +
            ((b.right - b.left) * (b.bottom - b.top))) -
        i);
    return u;
  }

  double _overlap(double x1, double w1, double x2, double w2) {
    double l1 = (x1 - (w1 / 2));
    double l2 = (x2 - (w2 / 2));
    double left = ((l1 > l2) ? l1 : l2);
    double r1 = (x1 + (w1 / 2));
    double r2 = (x2 + (w2 / 2));
    double right = ((r1 < r2) ? r1 : r2);
    return right - left;
  }

  List<ByteBuffer> _normalizeInput(TensorImage image) {
    final List<double> normalizedInput =
        image.tensorBuffer.getDoubleList().map((e) => e / 255).toList();
    final TensorBuffer inputTensorBuffer =
        TensorBuffer.createDynamic(TfLiteType.float32);
    inputTensorBuffer.loadList(
      normalizedInput,
      shape: [DetectModel.imageSize, DetectModel.imageSize, 3],
    );

    return [inputTensorBuffer.buffer];
  }

  ImageProcessor _getImageProcessor(TensorImage image) {
    final int padSize = max(image.width, image.height);

    return ImageProcessorBuilder()
        .add(ResizeWithCropOrPadOp(padSize, padSize))
        .add(
          ResizeOp(
            DetectModel.imageSize,
            DetectModel.imageSize,
            ResizeMethod.BILINEAR,
          ),
        )
        .build();
  }
}
