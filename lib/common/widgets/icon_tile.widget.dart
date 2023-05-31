import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';

class IconTile extends StatelessWidget {
  final dynamic icon;
  final String title;
  final Color color;
  final TextStyle? textStyle;

  const IconTile({
    super.key,
    required this.icon,
    required this.title,
    this.color = ColorStyles.yellowGreen,
    this.textStyle,
  }) : assert(
          icon != null && (icon is IconData || icon is Widget),
          'Icon must not null and it must be IconData or Widget',
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon is IconData
            ? Icon(
                icon,
                color: color,
                size: 18,
              )
            : icon,
        const SizedBox(
          width: 2,
        ),
        Text(
          title,
          style: textStyle ??
              TextStyles.s14RegularText.copyWith(
                color: color,
              ),
        )
      ],
    );
  }
}
