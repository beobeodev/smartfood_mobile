import 'package:smartfood/generated/assets.gen.dart';

abstract class DetectModel {
  static const String name = 'best_fp16.tflite';
  static const int numberOfThreads = 4;
  static final String labels = Assets.models.bestFp16Txt;
  static const int imageSize = 640;
}
