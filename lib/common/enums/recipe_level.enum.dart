import 'package:freezed_annotation/freezed_annotation.dart';

enum RecipeLevel {
  @JsonValue('Dễ')
  easy('Dễ'),
  @JsonValue('Vừa')
  medium('Vừa'),
  @JsonValue('Khó')
  hard('Khó');

  final String value;

  const RecipeLevel(this.value);
}
