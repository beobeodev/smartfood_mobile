import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smarthealthy/common/widgets/app_rounded_button.widget.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';

class DoneMeasureButton extends StatelessWidget {
  const DoneMeasureButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: AppRoundedButton(
          onPressed: () {},
          width: double.infinity,
          content: LocaleKeys.button_confirm.tr(),
        ),
      ),
    );
  }
}
