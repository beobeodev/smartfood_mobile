import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smarthealthy/common/extensions/context.extension.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/router/app_router.dart';

class AuthNavigationAction extends StatelessWidget {
  final bool isLogin;

  const AuthNavigationAction({super.key, this.isLogin = true});

  void _onTap(BuildContext context) {
    if (isLogin) {
      Navigator.of(context)
          .pushNamedAndRemoveUntil(AppRouter.register, (route) => false);
    } else {
      Navigator.of(context)
          .pushNamedAndRemoveUntil(AppRouter.login, (route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: context.bottomSpacing),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            isLogin
                ? LocaleKeys.auth_not_have_account.tr()
                : LocaleKeys.auth_have_account.tr(),
            style: TextStyles.s17MediumText,
          ),
          TextButton(
            onPressed: () => _onTap(context),
            style: TextButton.styleFrom(splashFactory: NoSplash.splashFactory),
            child: Text(
              isLogin
                  ? LocaleKeys.auth_sign_up.tr()
                  : LocaleKeys.auth_sign_in.tr(),
              style: TextStyles.s17BoldText.copyWith(
                color: ColorStyles.primary,
              ),
            ),
          )
        ],
      ),
    );
  }
}
