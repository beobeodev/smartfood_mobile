import 'package:smarthealthy/common/enums/sort_type.enum.dart';

class SortDTO {
  final String value;
  final SortType type;

  const SortDTO(this.value, this.type);

  @override
  String toString() {
    return '$value:${type.name}';
  }
}
