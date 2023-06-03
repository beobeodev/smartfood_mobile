import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/widgets/app_icon_button.widget.dart';
import 'package:unicons/unicons.dart';

class AppBackButton extends StatelessWidget {
  final VoidCallback? onAction;

  const AppBackButton({
    super.key,
    this.onAction,
  });

  @override
  Widget build(BuildContext context) {
    return AppIconButton(
      onPressed: () {
        onAction?.call();
        Navigator.of(context).pop();
      },
      icon: UniconsLine.angle_left_b,
      iconColor: ColorStyles.primary,
    );
  }
}
