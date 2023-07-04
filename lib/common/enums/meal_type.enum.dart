import 'package:freezed_annotation/freezed_annotation.dart';

enum MealType {
  @JsonValue('breakfast')
  breakfast,
  @JsonValue('lunch')
  lunch,
  @JsonValue('dinner')
  dinner,
}
