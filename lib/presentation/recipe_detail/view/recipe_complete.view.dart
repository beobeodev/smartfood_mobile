import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/widgets/app_rounded_button.widget.dart';
import 'package:smarthealthy/common/widgets/app_safe_area.widget.dart';
import 'package:smarthealthy/generated/assets.gen.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';

class RecipeCompleteView extends StatelessWidget {
  const RecipeCompleteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppSafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final maxWidth = constraints.maxWidth;

            return SizedBox(
              width: constraints.maxWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Assets.images.cooking.complete.svg(width: maxWidth / 1.1),
                  AppSize.h20,
                  Text(
                    'Bạn đã hoàn thành món ăn!',
                    style: TextStyles.regularText
                        .copyWith(color: ColorStyles.primary, fontSize: 22.sp),
                  ),
                  AppSize.h20,
                  AppRoundedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    content: LocaleKeys.button_return.tr(),
                    backgroundColor: Colors.white,
                    borderSide: const BorderSide(color: ColorStyles.primary),
                    textStyle: TextStyles.s14MediumText
                        .copyWith(color: ColorStyles.primary),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
