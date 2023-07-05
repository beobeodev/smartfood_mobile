import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/enums/meal_type.enum.dart';
import 'package:smarthealthy/common/enums/query_status.enum.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/data/models/meal.model.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/diary/diary.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/meal/meal_list.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/meal/meal_loading_list.widget.dart';

class MealPlanItem extends StatelessWidget {
  final MealType mealType;

  const MealPlanItem({super.key, required this.mealType});

  String _getTitle() {
    return switch (mealType) {
      MealType.breakfast => LocaleKeys.meal_breakfast.tr(),
      MealType.lunch => LocaleKeys.meal_lunch.tr(),
      MealType.dinner => LocaleKeys.meal_dinner.tr()
    };
  }

  List<MealModel>? _getDishes(DiaryState state) {
    return switch (mealType) {
      MealType.breakfast => state.currentDiary.breakfast,
      MealType.lunch => state.currentDiary.lunch,
      MealType.dinner => state.currentDiary.dinner
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
        BlocBuilder<DiaryBloc, DiaryState>(
          builder: (context, state) {
            switch (state.status) {
              case QueryStatus.success:
                final dishes = _getDishes(state);

                if (dishes == null || dishes.isEmpty) {
                  return Align(
                    child: Text(
                      LocaleKeys.texts_no_data_yet.tr(),
                      style: TextStyles.s14MediumText,
                    ),
                  );
                }

                return MealList(dishes: dishes);
              case QueryStatus.loading:
                return const MealLoadingList();
              case QueryStatus.error:
                return const SizedBox.shrink();
            }
          },
        )
      ],
    );
  }
}
