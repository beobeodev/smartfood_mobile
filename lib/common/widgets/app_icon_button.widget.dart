import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';

class AppIconButton extends StatelessWidget {
  final Color iconColor;
  final dynamic icon;
  final VoidCallback onPressed;
  final double iconSize;

  const AppIconButton({
    super.key,
    required this.icon,
    this.iconColor = ColorStyles.zodiacBlue,
    required this.onPressed,
    this.iconSize = 28,
  }) : assert(
          icon != null && (icon is IconData || icon is Widget),
          'Icon must not null and it must be IconData or Widget',
        );

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: icon is IconData
          ? Icon(
              icon,
              color: iconColor,
              size: iconSize,
            )
          : icon,
      padding: EdgeInsets.zero,
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      highlightColor: Colors.transparent,
      visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
    );
  }
}
