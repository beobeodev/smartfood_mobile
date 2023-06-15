import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/widgets/icon_tile.widget.dart';
import 'package:smarthealthy/data/models/recipe.model.dart';
import 'package:smarthealthy/generated/assets.gen.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/diary/widgets/filled_icon_button.widget.dart';
import 'package:unicons/unicons.dart';

class DishCard extends StatelessWidget {
  final RecipeModel recipe;
  final void Function(RecipeModel)? onAdd;

  const DishCard({
    super.key,
    required this.recipe,
    this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: ColorStyles.gray100),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              'https://www.thatlangon.com/wp-content/uploads/2020/05/salad-1-1-e1589019780961-large.jpg',
              width: 60.w,
              height: 60.w,
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
                Row(
                  children: [
                    const IconTile(
                      icon: UniconsLine.fire,
                      title: '220 kcal',
                      color: ColorStyles.red400,
                      isCenter: false,
                    ),
                    AppSize.w20,
                    IconTile(
                      icon: Assets.icons.weight.svg(
                        width: 18,
                        colorFilter: const ColorFilter.mode(
                          ColorStyles.yellowGreen,
                          BlendMode.srcIn,
                        ),
                      ),
                      title: '220 g',
                      isCenter: false,
                    )
                  ],
                ),
                AppSize.h5,
                Text(
                  '${LocaleKeys.macros_protein.tr()}: 20g',
                  style: TextStyles.s14RegularText
                      .copyWith(color: ColorStyles.gray500),
                )
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
    );
  }
}
