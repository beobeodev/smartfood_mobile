import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smarthealthy/common/extensions/context.extension.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/widgets/app_rounded_button.widget.dart';
import 'package:smarthealthy/generated/assets.gen.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/router/app_router.dart';

class NutritionNotFound extends StatelessWidget {
  const NutritionNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: AppSize.horizontalSpacing),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.images.diary.nutritionNotFound.svg(width: context.width / 1.7),
          AppSize.h10,
          Text(
            LocaleKeys.diary_not_found.tr(),
            style:
                TextStyles.s17RegularText.copyWith(color: ColorStyles.primary),
            textAlign: TextAlign.center,
          ),
          AppSize.h10,
          AppRoundedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRouter.calorieMeasure);
            },
            content: LocaleKeys.button_start.tr(),
            backgroundColor: Colors.white,
            textStyle:
                TextStyles.s14BoldText.copyWith(color: ColorStyles.primary),
            borderSide: const BorderSide(
              color: ColorStyles.primary,
            ),
          )
        ],
      ),
    );
  }
}
