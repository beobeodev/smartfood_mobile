import 'package:smarthealthy/common/enums/meal_type.enum.dart';

class MealTypeUIModel {
  final String name;
  final bool isSelected;
  final MealType type;

  const MealTypeUIModel({
    required this.name,
    this.isSelected = false,
    required this.type,
  });

  MealTypeUIModel copyWith({
    String? name,
    bool? isSelected,
    MealType? type,
  }) {
    return MealTypeUIModel(
      name: name ?? this.name,
      isSelected: isSelected ?? this.isSelected,
      type: type ?? this.type,
    );
  }
}
