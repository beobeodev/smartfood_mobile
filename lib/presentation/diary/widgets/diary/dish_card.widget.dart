import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/widgets/dismissible/common_dismissible.widget.dart';
import 'package:smarthealthy/data/models/recipe.model.dart';
import 'package:smarthealthy/common/widgets/filled_icon_button.widget.dart';

class DishCard extends StatelessWidget {
  final RecipeModel recipe;
  final void Function(RecipeModel)? onAdd;
  final void Function(RecipeModel)? onDismissed;

  const DishCard({
    super.key,
    required this.recipe,
    this.onAdd,
    this.onDismissed,
  });

  @override
  Widget build(BuildContext context) {
    return CommonDismissible(
      valueKey: Key(recipe.id),
      hasDismiss: onDismissed != null,
      onDismissed: () => onDismissed?.call(recipe),
      radius: AppSize.cardRadius,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppSize.cardRadius),
          border: Border.all(color: ColorStyles.gray100),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 10.w,
          vertical: AppSize.dishCardVerticalPadding,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(AppSize.cardRadius),
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
                children: [
                  Text(
                    recipe.name,
                    style: TextStyles.s17RegularText
                        .copyWith(overflow: TextOverflow.ellipsis),
                    maxLines: 2,
                  ),
                  AppSize.h5,
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
                  // AppSize.h5,
                  // Text(
                  //   '${LocaleKeys.macros_protein.tr()}: 20g',
                  //   style: TextStyles.s14RegularText
                  //       .copyWith(color: ColorStyles.gray500),
                  // )
                ],
              ),
            ),
            AppSize.w10,
            if (onAdd != null)
              FilledIconButton(
                onTap: () => onAdd!(recipe),
                backgroundColor: ColorStyles.yellowGreen,
                padding: 8,
              )
          ],
        ),
      ),
    );
  }
}
