import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/app_theme.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/widgets/dismissible/common_dismissible.widget.dart';
import 'package:smarthealthy/common/widgets/focused_menu/focus_menu_holder.dart';
import 'package:smarthealthy/common/widgets/focused_menu/focused_menu_item.dart';
import 'package:smarthealthy/data/models/recipe.model.dart';
import 'package:smarthealthy/common/widgets/filled_icon_button.widget.dart';
import 'package:smarthealthy/router/app_router.dart';

class DishCard extends StatelessWidget {
  final RecipeModel recipe;
  final void Function(RecipeModel)? onAdd;
  final void Function(RecipeModel)? onDismissed;
  final void Function()? onDelete;
  final bool enabled;

  const DishCard({
    super.key,
    required this.recipe,
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
          title: const Text('Xoá'),
          onPressed: () => onDelete?.call(),
        )
      ],
      onPressed: () {
        Navigator.of(context)
            .pushNamed(AppRouter.mealDetail, arguments: recipe);
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
                      style: TextStyles.s17RegularText
                          .copyWith(overflow: TextOverflow.ellipsis),
                      maxLines: 2,
                    ),
                    // AppSize.h5,
                    // const Row(
                    //   children: [
                    //     IconTile(
                    //       icon: UniconsLine.fire,
                    //       title: '220 kcal',
                    //       color: ColorStyles.red400,
                    //       isCenter: false,
                    //     ),
                    //     AppSize.w20,
                    //     // IconTile(
                    //     //   icon: Assets.icons.weight.svg(
                    //     //     width: 18,
                    //     //     colorFilter: colorSvg(
                    //     //       ColorStyles.yellowGreen,
                    //     //     ),
                    //     //   ),
                    //     //   title: '220 g',
                    //     //   isCenter: false,
                    //     // )
                    //   ],
                    // ),
                  ],
                ),
              ),
              AppSize.w10,
              if (onAdd != null)
                FilledIconButton(
                  onTap: () => onAdd!(recipe),
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
