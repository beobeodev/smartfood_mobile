import 'package:smarthealthy/common/enums/filter_type.enum.dart';

class RecipeFilterDTO {
  final RecipeFilterType type;
  final List<String> values;

  RecipeFilterDTO({required this.type, required this.values});
}
