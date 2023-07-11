import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/widgets/common_shimmer.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/diary_inherited.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/radial_gauge/common_radial_gauge.widget.dart';

class CalorieRadialGauge extends StatelessWidget {
  final double itemSize;

  const CalorieRadialGauge({super.key, required this.itemSize});

  @override
  Widget build(BuildContext context) {
    final diaryInfo = DiaryInherited.of(context)?.diaryInfo;

    return SizedBox(
      width: itemSize,
      height: itemSize,
      child: diaryInfo == null
          ? const CommonShimmer(
              child: CommonRadialGauge(
                value: 65,
              ),
            )
          : Stack(
              alignment: Alignment.center,
              children: [
                CommonRadialGauge(
                  value: diaryInfo.radialGauge.toDouble(),
                ),
                Text(
                  '${diaryInfo.radialGauge}%',
                  style: TextStyles.boldText.copyWith(
                    fontSize: 24.sp,
                    color: ColorStyles.red400,
                  ),
                )
              ],
            ),
    );
  }
}
