import 'package:smartfood/generated/assets.gen.dart';

abstract class DetectModel {
  static const String name = 'models/best.tflite';
  static const int numberOfThreads = 4;
  static final String labels = Assets.models.labels;
  static const int imageSize = 640;
}
