class NutritionWrapper {
  final int calorie;
  final int fat;
  final int protein;
  final int carbs;

  NutritionWrapper({
    required this.calorie,
    required this.fat,
    required this.protein,
    required this.carbs,
  });

  @override
  String toString() {
    return 'NutritionWrapper(calorie: $calorie, fat: $fat, protein: $protein, carbs: $carbs)';
  }
}
