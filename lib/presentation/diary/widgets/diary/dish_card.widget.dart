import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/app_theme.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/widgets/dismissible/common_dismissible.widget.dart';
import 'package:smarthealthy/common/widgets/focused_menu/focus_menu_holder.dart';
import 'package:smarthealthy/common/widgets/focused_menu/focused_menu_item.dart';
import 'package:smarthealthy/data/models/meal.model.dart';
import 'package:smarthealthy/data/models/recipe.model.dart';
import 'package:smarthealthy/common/widgets/filled_icon_button.widget.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/router/app_router.dart';

class DishCard extends StatelessWidget {
  final MealModel meal;
  final void Function(MealModel)? onAdd;
  final void Function(RecipeModel)? onDismissed;
  final void Function()? onDelete;
  final bool enabled;

  RecipeModel get recipe => meal.recipe;

  const DishCard({
    super.key,
    required this.meal,
    this.onAdd,
    this.onDismissed,
    this.onDelete,
    this.enabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return FocusedMenuHolder(
      menuOffset: 10,
      enabled: enabled,
      menuItems: [
        FocusedMenuItem(
          title: Text(LocaleKeys.texts_delete.tr()),
          onPressed: () => onDelete?.call(),
        )
      ],
      onPressed: () {
        if (enabled) {
          Navigator.of(context)
              .pushNamed(AppRouter.mealDetail, arguments: meal);
        }
      },
      child: CommonDismissible(
        valueKey: Key(recipe.id),
        hasDismiss: onDismissed != null,
        onDismissed: () => onDismissed?.call(recipe),
        radius: AppSize.diaryCardRadius,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(AppSize.diaryCardRadius),
            boxShadow: AppTheme.primaryShadow,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 10.w,
            vertical: AppSize.dishCardVerticalPadding,
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(1000),
                child: Image.network(
                  recipe.avatar,
                  width: AppSize.dishCardAvatarSize,
                  height: AppSize.dishCardAvatarSize,
                  fit: BoxFit.cover,
                ),
              ),
              AppSize.w15,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      recipe.name,
                      style: TextStyles.s17MediumText
                          .copyWith(overflow: TextOverflow.ellipsis),
                      maxLines: 2,
                    ),
                    AppSize.h10,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        NutritionColumn(
                          values: [meal.kcalString, meal.carbsString],
                        ),
                        NutritionColumn(
                          values: [meal.fatString, meal.proteinString],
                        )
                      ],
                    )
                  ],
                ),
              ),
              AppSize.w10,
              if (onAdd != null)
                FilledIconButton(
                  onTap: () => onAdd!(meal),
                  backgroundColor: ColorStyles.yellowGreen,
                  padding: 6,
                )
            ],
          ),
        ),
      ),
    );
  }
}

class NutritionColumn extends StatelessWidget {
  final List<String> values;

  const NutritionColumn({super.key, required this.values});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: values.mapIndexed((index, element) {
        return Padding(
          padding: EdgeInsets.only(bottom: index == 0 ? 3 : 0),
          child: Text(
            element,
            style: TextStyles.s14RegularText.copyWith(
              color: ColorStyles.red400,
            ),
          ),
        );
      }).toList(),
    );
  }
}
