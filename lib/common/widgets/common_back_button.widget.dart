import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/widgets/common_icon_button.widget.dart';
import 'package:unicons/unicons.dart';

class CommonBackButton extends StatelessWidget {
  final VoidCallback? onAction;

  const CommonBackButton({
    super.key,
    this.onAction,
  });

  @override
  Widget build(BuildContext context) {
    return CommonIconButton(
      onPressed: () {
        onAction?.call();
        Navigator.of(context).pop();
      },
      icon: UniconsLine.angle_left_b,
      iconColor: ColorStyles.primary,
    );
  }
}
