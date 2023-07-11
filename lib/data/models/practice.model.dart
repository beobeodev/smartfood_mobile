import 'package:freezed_annotation/freezed_annotation.dart';

part 'practice.model.freezed.dart';
part 'practice.model.g.dart';

@Freezed(toJson: false)
class PracticeModel with _$PracticeModel {
  PracticeModel._();

  factory PracticeModel({
    required String id,
    required String name,
    required double calo,
    required int minute,
    int? practiceDuration,
  }) = _PracticeModel;

  factory PracticeModel.fromJson(Map<String, dynamic> json) =>
      _$PracticeModelFromJson(json);

  int get totalDuration => practiceDuration ?? minute;

  int get totalCalories => ((totalDuration / minute) * calo).round();
}
