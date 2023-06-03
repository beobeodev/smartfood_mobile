import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/data/models/ingredient.model.dart';

part 'quantification.model.freezed.dart';
part 'quantification.model.g.dart';

@Freezed(toJson: false)
class QuantificationModel with _$QuantificationModel {
  QuantificationModel._();

  factory QuantificationModel({
    required final String id,
    required final String value,
    required final String unit,
    required final IngredientModel ingredient,
  }) = _QuantificationModel;

  factory QuantificationModel.fromJson(Map<String, dynamic> json) =>
      _$QuantificationModelFromJson(json);

  @JsonKey(includeFromJson: false, includeToJson: false)
  String get quantitative => '$value $unit';
}
