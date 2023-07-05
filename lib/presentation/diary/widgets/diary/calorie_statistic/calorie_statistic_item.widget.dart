import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';

class CalorieStatisticItem extends StatelessWidget {
  final int value;
  final String title;

  const CalorieStatisticItem({
    super.key,
    required this.value,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: '$value ',
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
          title,
          style: TextStyles.regularText
              .copyWith(color: ColorStyles.gray400, fontSize: 14.sp),
        )
      ],
    );
  }
}
