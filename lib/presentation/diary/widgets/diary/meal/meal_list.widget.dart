import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/data/models/meal.model.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/dish_card.widget.dart';

class MealList extends StatelessWidget {
  final List<MealModel> dishes;

  const MealList({super.key, required this.dishes});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: dishes.length,
      shrinkWrap: true,
      padding: const EdgeInsets.only(top: 10),
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (_, __) => AppSize.h10,
      itemBuilder: (context, index) {
        final meal = dishes[index];

        return DishCard(
          recipe: meal.recipe,
        );
      },
    );
  }
}
