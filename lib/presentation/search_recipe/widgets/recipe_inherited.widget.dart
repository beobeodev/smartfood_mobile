import 'package:flutter/widgets.dart';

class RecipeListProvider extends InheritedWidget {
  final bool autoFocus;

  const RecipeListProvider({
    super.key,
    required super.child,
    this.autoFocus = false,
  });

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;

  static RecipeListProvider? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<RecipeListProvider>();
}
