import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/enums/meal_type.enum.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/data/models/recipe.model.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/diary/diary.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/dish_card.widget.dart';

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

  List<RecipeModel>? _getDishes(DiaryState state) {
    return switch (mealType) {
      MealType.breakfast => state.currentDiary?.breakfast,
      MealType.lunch => state.currentDiary?.lunch,
      MealType.dinner => state.currentDiary?.dinner
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
            final dishes = _getDishes(state);

            if (dishes == null || dishes.isEmpty) {
              return Align(
                child: Text(
                  LocaleKeys.texts_no_data.tr(),
                  style: TextStyles.s14MediumText,
                ),
              );
            }

            return ListView.separated(
              itemCount: dishes.length,
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 10),
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (_, __) => AppSize.h10,
              itemBuilder: (context, index) {
                final recipe = dishes[index];

                return DishCard(
                  recipe: recipe,
                );
              },
            );
          },
        )
      ],
    );
  }
}
