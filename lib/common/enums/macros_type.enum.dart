import 'package:freezed_annotation/freezed_annotation.dart';

enum MacrosType {
  @JsonValue('protein')
  protein,

  @JsonValue('carbs')
  carbs,

  @JsonValue('fat')
  fat
}
