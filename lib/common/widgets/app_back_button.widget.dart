import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/widgets/app_icon_button.widget.dart';
import 'package:unicons/unicons.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppIconButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      icon: UniconsLine.angle_left_b,
      iconColor: ColorStyles.primary,
    );
  }
}
