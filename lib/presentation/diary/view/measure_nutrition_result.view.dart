import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/extensions/context.extension.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/widgets/app_rounded_button.widget.dart';
import 'package:smarthealthy/common/widgets/app_safe_area.widget.dart';
import 'package:smarthealthy/data/repositories/user.repository.dart';
import 'package:smarthealthy/di/di.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/diary/bloc/calorie_measure/calorie_measure.bloc.dart';
import 'package:smarthealthy/presentation/diary/ui_models/nutrition_wrapper.dart';

class MeasureNutritionResultPage extends StatelessWidget {
  final NutritionWrapper nutrition;

  const MeasureNutritionResultPage({super.key, required this.nutrition});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CalorieMeasureBloc(
        userRepository: getIt.get<UserRepository>(),
      ),
      child: _MeasureNutritionResultView(
        nutrition: nutrition,
      ),
    );
  }
}

class _MeasureNutritionResultView extends StatelessWidget {
  final NutritionWrapper nutrition;

  const _MeasureNutritionResultView({required this.nutrition});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: AppSafeArea(
          paddingBottom: context.bottomSpacing,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppSize.h20,
              Text(
                'Lượng Calorie mà bạn cần nạp vào cơ thể hằng ngày là:',
                style: TextStyles.s17MediumText,
              ),
              AppSize.h20,
              Align(
                child: Text(
                  '${nutrition.calorie.toString()}kcal',
                  style: TextStyles.boldText.copyWith(
                    fontSize: 24.sp,
                    color: ColorStyles.yellowGreen,
                  ),
                ),
              ),
              AppSize.h20,
              NutritionRichText(
                title: LocaleKeys.macros_protein.tr(),
                value: nutrition.protein,
              ),
              AppSize.h10,
              NutritionRichText(
                title: LocaleKeys.macros_carbs.tr(),
                value: nutrition.carbs,
              ),
              AppSize.h10,
              NutritionRichText(
                title: LocaleKeys.macros_fat.tr(),
                value: nutrition.fat,
              ),
              const Spacer(),
              AppRoundedButton(
                width: double.infinity,
                onPressed: () => Navigator.of(context).pop(),
                content: LocaleKeys.button_complete.tr(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NutritionRichText extends StatelessWidget {
  final String title;
  final int value;

  const NutritionRichText({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyles.s17MediumText,
        children: [
          TextSpan(
            text: '$title: ',
            style: TextStyles.s17MediumText,
          ),
          TextSpan(
            text: '${value}g',
            style:
                TextStyles.s17BoldText.copyWith(color: ColorStyles.yellowGreen),
          )
        ],
      ),
    );
  }
}
