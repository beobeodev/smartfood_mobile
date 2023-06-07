import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';

class AuthIntroduction extends StatelessWidget {
  final bool isLogin;

  const AuthIntroduction({super.key, this.isLogin = true});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          isLogin ? LocaleKeys.auth_sign_in.tr() : LocaleKeys.auth_sign_up.tr(),
          style: TextStyles.boldText.copyWith(fontSize: 26.sp),
        ),
        AppSize.h10,
        Text(
          isLogin
              ? LocaleKeys.auth_sign_in_introduction.tr()
              : LocaleKeys.auth_sign_up_introduction.tr(),
          style: TextStyles.s14RegularText.copyWith(color: ColorStyles.gray500),
        )
      ],
    );
  }
}
