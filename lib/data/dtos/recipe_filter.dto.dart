import 'package:smarthealthy/common/constants/enums/filter_type.enum.dart';

class RecipeFilterDTO {
  final RecipeFilterType type;
  final List<String> values;

  RecipeFilterDTO({required this.type, required this.values});
}
