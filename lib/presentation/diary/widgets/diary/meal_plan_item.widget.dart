import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/constants/enums/meal_type.enum.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';

class MealPlanItem extends StatelessWidget {
  final MealType mealType;

  const MealPlanItem({super.key, required this.mealType});

  String _getTitle() {
    return switch (mealType) {
      MealType.breakfast => LocaleKeys.meal_breakfast.tr(),
      MealType.lunch => LocaleKeys.meal_dinner.tr(),
      MealType.dinner => LocaleKeys.meal_lunch.tr()
    };
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          _getTitle(),
          style: TextStyles.mediumText
              .copyWith(fontSize: 19.sp, color: ColorStyles.yellowGreen),
        ),
        // const DishList()
      ],
    );
  }
}
