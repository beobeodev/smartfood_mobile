import 'package:flutter/material.dart';
import 'package:smarthealthy/data/models/recipe.model.dart';
import 'package:smarthealthy/presentation/diary/widgets/add_meal/dish_section_title.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/add_meal/dish_list.widget.dart';

class DishListSection extends StatefulWidget {
  const DishListSection({super.key});

  @override
  State<DishListSection> createState() => _DishListSectionState();
}

class _DishListSectionState extends State<DishListSection> {
  final ValueNotifier<List<RecipeModel>> _dishesNotifier = ValueNotifier([]);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DishSectionTitle(
          dishesNotifier: _dishesNotifier,
        ),
        ValueListenableBuilder(
          valueListenable: _dishesNotifier,
          builder: (context, value, child) {
            return DishList(
              recipes: value,
            );
          },
        )
      ],
    );
  }
}
