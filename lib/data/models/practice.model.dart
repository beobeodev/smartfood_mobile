import 'package:freezed_annotation/freezed_annotation.dart';

part 'practice.model.freezed.dart';
part 'practice.model.g.dart';

@Freezed(toJson: false)
class PracticeModel with _$PracticeModel {
  factory PracticeModel({
    required String id,
    required String name,
    required double calo,
    required int minute,
    double? practiceDuration,
  }) = _PracticeModel;

  factory PracticeModel.fromJson(Map<String, dynamic> json) =>
      _$PracticeModelFromJson(json);
}
