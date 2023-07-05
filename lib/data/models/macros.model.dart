import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/common/enums/macros_type.enum.dart';

part 'macros.model.freezed.dart';
part 'macros.model.g.dart';

@Freezed(toJson: false)
class MacrosModel with _$MacrosModel {
  factory MacrosModel({required MacrosType type, required double value}) =
      _MacrosModel;

  factory MacrosModel.fromJson(Map<String, dynamic> json) =>
      _$MacrosModelFromJson(json);
}
