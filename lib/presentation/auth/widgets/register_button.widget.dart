import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smarthealthy/common/widgets/app_rounded_button.widget.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';

class RegisterButton extends StatelessWidget {
  final VoidCallback? action;

  const RegisterButton({super.key, this.action});

  @override
  Widget build(BuildContext context) {
    return AppRoundedButton(
      onPressed: () => action?.call(),
      content: LocaleKeys.auth_sign_up.tr(),
      width: double.infinity,
      borderRadius: 100,
    );
  }
}
