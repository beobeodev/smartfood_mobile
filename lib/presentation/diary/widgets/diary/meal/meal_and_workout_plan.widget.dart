import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:smarthealthy/common/enums/meal_type.enum.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/meal/meal_plan_item.widget.dart';

class MealAndWorkoutPlan extends StatelessWidget {
  const MealAndWorkoutPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: MealType.values.mapIndexed((index, e) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: index == MealType.values.length - 1 ? 0 : 20,
          ),
          child: MealPlanItem(mealType: e),
        );
      }).toList(),
    );
  }
}
