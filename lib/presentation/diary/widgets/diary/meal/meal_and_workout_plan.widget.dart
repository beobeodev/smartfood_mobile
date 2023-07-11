import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smarthealthy/common/enums/meal_type.enum.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/data/models/practice.model.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/diary/ui_models/meal_plan.model.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/diary_inherited.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/meal/meal_plan_item.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/workout/diary_practice_section.widget.dart';

class MealAndWorkoutPlan extends StatefulWidget {
  const MealAndWorkoutPlan({super.key});

  @override
  State<MealAndWorkoutPlan> createState() => _MealAndWorkoutPlanState();
}

class _MealAndWorkoutPlanState extends State<MealAndWorkoutPlan> {
  List<MealPlanUIModel> _items = [
    MealPlanUIModel(
      title: LocaleKeys.meal_breakfast.tr(),
      type: MealType.breakfast,
    ),
    MealPlanUIModel(title: LocaleKeys.meal_lunch.tr(), type: MealType.lunch),
    MealPlanUIModel(title: LocaleKeys.meal_dinner.tr(), type: MealType.dinner)
  ];

  List<PracticeModel>? _practices;

  void _setData() {
    final diaryInfo = DiaryInherited.of(context)?.diaryInfo;

    if (diaryInfo != null) {
      _items = diaryInfo.mealPlans;
      _practices = diaryInfo.practices;
    }
  }

  @override
  void didChangeDependencies() {
    _setData();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListView.separated(
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return MealPlanItem(mealPlan: _items[index]);
          },
          shrinkWrap: true,
          separatorBuilder: (_, __) {
            return AppSize.h20;
          },
          itemCount: _items.length,
          physics: const NeverScrollableScrollPhysics(),
        ),
        AppSize.h20,
        DiaryPracticeSection(
          practices: _practices,
        )
      ],
    );
  }
}
