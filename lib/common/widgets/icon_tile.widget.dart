import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';

class IconTile extends StatelessWidget {
  final dynamic icon;
  final String title;
  final Color color;
  final double iconSize;
  final TextStyle? textStyle;
  final bool isCenter;
  final double spacing;
  final VoidCallback? onTap;

  const IconTile({
    super.key,
    required this.icon,
    required this.title,
    this.color = ColorStyles.yellowGreen,
    this.iconSize = 18,
    this.textStyle,
    this.isCenter = true,
    this.spacing = 2,
    this.onTap,
  }) : assert(
          icon != null && (icon is IconData || icon is Widget),
          'Icon must not null and it must be IconData or Widget',
        );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Row(
        mainAxisAlignment:
            isCenter ? MainAxisAlignment.center : MainAxisAlignment.start,
        children: [
          icon is IconData
              ? Icon(
                  icon,
                  color: color,
                  size: iconSize,
                )
              : icon,
          SizedBox(
            width: spacing,
          ),
          Text(
            title,
            style: textStyle ??
                TextStyles.s14RegularText.copyWith(
                  color: color,
                ),
          )
        ],
      ),
    );
  }
}
