import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';

class CommonShimmerItem extends StatelessWidget {
  const CommonShimmerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ColorStyles.antiFlashWhite,
      highlightColor: ColorStyles.gray100,
      child: Container(
        decoration: BoxDecoration(
          color: ColorStyles.antiFlashWhite,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
