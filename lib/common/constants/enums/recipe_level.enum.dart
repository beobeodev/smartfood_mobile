import 'package:freezed_annotation/freezed_annotation.dart';

enum RecipeLevel {
  @JsonValue('Dễ')
  easy,
  @JsonValue('Vừa')
  medium,
  @JsonValue('Khó')
  hard,
}
