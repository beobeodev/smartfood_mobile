import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/widgets/app_rounded_button.widget.dart';
import 'package:smarthealthy/generated/assets.gen.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/router/app_router.dart';

class NeedLoginError extends StatelessWidget {
  const NeedLoginError({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: AppSize.horizontalSpacing),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return SizedBox(
            width: constraints.maxWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.images.diary.needLogin
                    .svg(width: constraints.maxWidth / 1.5),
                AppSize.h10,
                Text(
                  LocaleKeys.diary_need_login.tr(),
                  style: TextStyles.s17RegularText
                      .copyWith(color: ColorStyles.primary),
                  textAlign: TextAlign.center,
                ),
                AppSize.h10,
                AppRoundedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(AppRouter.login);
                  },
                  content: LocaleKeys.auth_sign_in.tr(),
                  backgroundColor: Colors.white,
                  textStyle: TextStyles.s14BoldText
                      .copyWith(color: ColorStyles.primary),
                  borderSide: const BorderSide(
                    color: ColorStyles.primary,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
