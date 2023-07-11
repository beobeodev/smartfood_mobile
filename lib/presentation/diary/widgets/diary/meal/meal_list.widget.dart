import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/data/models/meal.model.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/dish_card.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/empty_text.widget.dart';

class MealList extends StatelessWidget {
  final List<MealModel>? dishes;
  final void Function(String) onDelete;

  const MealList({super.key, required this.dishes, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return (dishes == null || dishes!.isEmpty)
        ? const EmptyText()
        : ListView.separated(
            itemCount: dishes!.length,
            shrinkWrap: true,
            padding: AppSize.mealPadding,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (_, __) => AppSize.h10,
            itemBuilder: (context, index) {
              final meal = dishes![index];

              return DishCard(
                enabled: true,
                meal: meal,
                onDelete: () => onDelete(meal.id!),
              );
            },
          );
  }
}
