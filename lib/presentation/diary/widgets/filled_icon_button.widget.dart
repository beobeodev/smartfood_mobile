import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';

class FilledIconButton extends StatelessWidget {
  final void Function() onTap;
  final double padding;
  final double iconSize;
  final Color backgroundColor;
  final Color iconColor;

  const FilledIconButton({
    super.key,
    required this.onTap,
    this.padding = 5,
    this.iconSize = 18,
    this.backgroundColor = ColorStyles.primary,
    this.iconColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.add,
          color: iconColor,
          size: iconSize.sp,
        ),
      ),
    );
  }
}
