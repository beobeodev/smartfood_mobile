import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/constants/enums/meal_type.enum.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/widgets/icon_tile.widget.dart';
import 'package:smarthealthy/generated/assets.gen.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:unicons/unicons.dart';

class MealPlanItem extends StatelessWidget {
  final MealType mealType;

  const MealPlanItem({super.key, required this.mealType});

  SvgGenImage _getBackground() {
    return switch (mealType) {
      MealType.morning => Assets.images.diary.morning,
      MealType.noon => Assets.images.diary.noon,
      MealType.night => Assets.images.diary.night
    };
  }

  String _getTitle() {
    return switch (mealType) {
      MealType.morning => LocaleKeys.meal_morning.tr(),
      MealType.noon => LocaleKeys.meal_noon.tr(),
      MealType.night => LocaleKeys.meal_night.tr()
    };
  }

  Color _getColor() {
    return switch (mealType) {
      MealType.morning => Colors.black,
      MealType.noon => ColorStyles.zodiacBlue,
      MealType.night => Colors.white
    };
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            _getBackground().svg(
              width: 120.w,
              height: 35.h,
            ),
            Text(
              _getTitle(),
              style: TextStyles.mediumText
                  .copyWith(fontSize: 19.sp, color: _getColor()),
            ),
          ],
        ),
        ListView.separated(
          itemCount: 5,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (_, __) {
            return AppSize.h10;
          },
          padding: const EdgeInsets.only(top: 10),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: ColorStyles.gray100),
              ),
              padding: const EdgeInsets.all(10),
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
                          'Salad trộn dầu giấm',
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
                  )
                ],
              ),
            );
          },
          shrinkWrap: true,
        )
      ],
    );
  }
}
