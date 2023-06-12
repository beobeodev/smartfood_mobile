import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';

class DefaultMeasureContainer extends StatelessWidget {
  final Widget child;
  final double size;

  const DefaultMeasureContainer({
    super.key,
    required this.child,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(color: ColorStyles.gray100),
        borderRadius: BorderRadius.circular(20),
      ),
      alignment: Alignment.bottomCenter,
      child: child,
    );
  }
}
