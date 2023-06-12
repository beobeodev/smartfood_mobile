import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';

class LeftConsumedTotalCalorie extends StatelessWidget {
  final double itemSize;

  const LeftConsumedTotalCalorie({super.key, required this.itemSize});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: itemSize,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(3, (index) {
            return const CalorieStatisticItem();
          }),
        ),
      ),
    );
  }
}

class CalorieStatisticItem extends StatelessWidget {
  const CalorieStatisticItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: '630 ',
                style: TextStyles.boldText.copyWith(fontSize: 22.sp),
              ),
              TextSpan(
                text: 'kcal',
                style: TextStyles.s17BoldText,
              )
            ],
          ),
        ),
        Text(
          'còn lại',
          style: TextStyles.regularText
              .copyWith(color: ColorStyles.gray400, fontSize: 14.sp),
        )
      ],
    );
  }
}
