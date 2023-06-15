import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/data/models/recipe.model.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/dish_card.widget.dart';

class DishList extends StatelessWidget {
  final List<RecipeModel> recipes;

  const DishList({super.key, required this.recipes});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      padding: const EdgeInsets.only(top: 10),
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return DishCard(recipe: recipes[index]);
      },
      separatorBuilder: (_, __) => AppSize.h10,
      itemCount: recipes.length,
    );
  }
}
