import 'package:smarthealthy/common/constants/enums/filter_type.enum.dart';

class FilterDTO {
  final FilterType type;
  final String value;

  FilterDTO({required this.type, required this.value});
}
