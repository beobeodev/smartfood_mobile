import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';

class DefaultMeasureContainer extends StatelessWidget {
  final Widget child;
  final double size;
  final bool isSelected;

  const DefaultMeasureContainer({
    super.key,
    required this.child,
    required this.size,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(
          color: isSelected ? ColorStyles.red400 : ColorStyles.gray100,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      alignment: Alignment.bottomCenter,
      child: child,
    );
  }
}
