import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';

class CommonShimmer extends StatelessWidget {
  final double? width;
  final double? height;
  final double borderRadius;
  final Widget? child;
  final bool enabled;

  const CommonShimmer({
    super.key,
    this.width,
    this.height,
    this.borderRadius = 10,
    this.child,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ColorStyles.antiFlashWhite,
      highlightColor: ColorStyles.gray100,
      enabled: enabled,
      child: child ??
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: ColorStyles.antiFlashWhite,
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
    );
  }
}
