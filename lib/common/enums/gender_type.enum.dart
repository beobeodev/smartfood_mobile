import 'package:json_annotation/json_annotation.dart';

enum GenderType {
  @JsonValue('male')
  male,
  @JsonValue('female')
  female
}
