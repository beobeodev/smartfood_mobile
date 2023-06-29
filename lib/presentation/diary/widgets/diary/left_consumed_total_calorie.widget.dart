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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '1610 ',
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
                    'cần nạp',
                    style: TextStyles.regularText
                        .copyWith(color: ColorStyles.gray400, fontSize: 14.sp),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '1047 ',
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
                    'đã nạp',
                    style: TextStyles.regularText
                        .copyWith(color: ColorStyles.gray400, fontSize: 14.sp),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '563 ',
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
              ),
            ],
          ),
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
