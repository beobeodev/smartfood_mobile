import 'package:flutter/material.dart';
import 'package:smarthealthy/common/extensions/context.extension.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/calorie_in_day.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/macros/macro_statistic.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/meal/meal_and_workout_plan.widget.dart';

class NutritionInDay extends StatelessWidget {
  const NutritionInDay({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        width: context.width,
        padding: const EdgeInsets.fromLTRB(
          AppSize.horizontalSpacing,
          AppSize.horizontalSpacing,
          AppSize.horizontalSpacing,
          0,
        ),
        child: const SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          padding: EdgeInsets.only(bottom: AppSize.horizontalSpacing),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CalorieInDay(),
              AppSize.h20,
              MacroStatistic(),
              SizedBox(
                height: 30,
              ),
              MealAndWorkoutPlan()
            ],
          ),
        ),
      ),
    );
  }
}
