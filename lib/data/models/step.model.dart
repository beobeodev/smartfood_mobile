class RecipeStep {
  final String id;
  final String description;
  final List<String> images;
  final int order;

  RecipeStep({
    required this.id,
    this.description = '',
    this.images = const [],
    required this.order,
  });
}
