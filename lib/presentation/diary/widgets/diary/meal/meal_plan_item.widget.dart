import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/presentation/diary/bloc/delete_meal/delete_meal.bloc.dart';
import 'package:smarthealthy/presentation/diary/ui_models/meal_plan.model.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/meal/meal_list.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/meal/meal_loading_list.widget.dart';

class MealPlanItem extends StatelessWidget {
  final MealPlanUIModel mealPlan;

  const MealPlanItem({super.key, required this.mealPlan});

  void _onDelete(BuildContext context, String mealId) {
    context
        .read<DeleteMealBloc>()
        .add(DeleteMealEvent.submit(mealId, mealPlan.type));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppSize.horizontalSpacing),
          child: Text(
            mealPlan.title,
            style: TextStyles.mediumText
                .copyWith(fontSize: 19.sp, color: ColorStyles.yellowGreen),
          ),
        ),
        mealPlan.meals == null
            ? const MealLoadingList()
            : MealList(
                dishes: mealPlan.meals,
                onDelete: (mealId) => _onDelete(context, mealId),
              )
      ],
    );
  }
}
