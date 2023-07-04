import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/widgets/common_shimmer.widget.dart';

class CalorieLoadingItem extends StatelessWidget {
  const CalorieLoadingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonShimmer(
          width: 90.sp,
          height: 22.sp,
        ),
        AppSize.h5,
        CommonShimmer(
          width: 55.sp,
          height: 14.sp,
        )
      ],
    );
  }
}
