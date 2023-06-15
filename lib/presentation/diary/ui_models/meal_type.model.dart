class MealTypeUIModel {
  final String name;
  final bool isSelected;

  const MealTypeUIModel({
    required this.name,
    this.isSelected = false,
  });

  MealTypeUIModel copyWith({
    String? name,
    bool? isSelected,
  }) {
    return MealTypeUIModel(
      name: name ?? this.name,
      isSelected: isSelected ?? this.isSelected,
    );
  }
}
