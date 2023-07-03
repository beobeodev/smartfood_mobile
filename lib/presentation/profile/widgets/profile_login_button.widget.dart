import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/widgets/app_rounded_button.widget.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/router/app_router.dart';

class ProfileLoginButton extends StatelessWidget {
  const ProfileLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppRoundedButton(
      onPressed: () {
        Navigator.of(context).pushNamed(AppRouter.login);
      },
      width: double.infinity,
      content: LocaleKeys.auth_sign_in.tr(),
      backgroundColor: Colors.white,
      textStyle: TextStyles.s14BoldText.copyWith(color: ColorStyles.primary),
      borderSide: const BorderSide(
        color: ColorStyles.primary,
      ),
    );
  }
}
