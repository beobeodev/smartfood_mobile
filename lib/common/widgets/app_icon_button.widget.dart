import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';

class AppIconButton extends StatelessWidget {
  final Color iconColor;
  final IconData icon;
  final VoidCallback onPressed;

  const AppIconButton({
    super.key,
    required this.icon,
    this.iconColor = ColorStyles.zodiacBlue,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: iconColor,
        size: 28,
      ),
      padding: EdgeInsets.zero,
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      highlightColor: Colors.transparent,
      visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
    );
  }
}
