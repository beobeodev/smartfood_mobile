import 'package:freezed_annotation/freezed_annotation.dart';

enum SortType {
  @JsonValue('ASC')
  ASC('ASC'),
  @JsonValue('DESC')
  DESC('DESC');

  final String name;

  const SortType(this.name);
}
