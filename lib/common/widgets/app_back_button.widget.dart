import 'package:flutter/material.dart';
import 'package:smartfood/common/theme/color_styles.dart';
import 'package:unicons/unicons.dart';

class AppBackButton extends StatelessWidget {
  final Color iconColor;

  const AppBackButton({
    super.key,
    this.iconColor = ColorStyles.zodiacBlue,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      icon: Icon(
        UniconsLine.angle_left_b,
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
