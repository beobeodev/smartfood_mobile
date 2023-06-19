import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/extensions/context.extension.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/widgets/app_rounded_button.widget.dart';
import 'package:smarthealthy/generated/assets.gen.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';

class CommonError extends StatelessWidget {
  final VoidCallback? onRefresh;

  const CommonError({super.key, this.onRefresh});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.images.lottie.error.lottie(
            width: context.width / 2,
          ),
          Text(
            LocaleKeys.texts_error_occur.tr(),
            style:
                TextStyles.s17RegularText.copyWith(color: ColorStyles.red500),
            textAlign: TextAlign.center,
          ),
          if (onRefresh != null)
            Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: AppRoundedButton(
                onPressed: onRefresh!,
                content: LocaleKeys.button_try_again.tr(),
              ),
            )
        ],
      ),
    );
  }
}
