import 'package:json_annotation/json_annotation.dart';

enum PracticeMode {
  @JsonValue('rare')
  rare(1.2),

  @JsonValue('light')
  light(1.375),

  @JsonValue('medium')
  medium(1.55),

  @JsonValue('heavy')
  heavy(1.725),

  @JsonValue('veryHeavy')
  veryHeavy(1.9);

  final double value;
  const PracticeMode(this.value);
}
