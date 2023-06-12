import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class CalorieRadialGauge extends StatelessWidget {
  final double itemSize;

  const CalorieRadialGauge({super.key, required this.itemSize});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: itemSize,
      width: itemSize,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SfRadialGauge(
            axes: <RadialAxis>[
              RadialAxis(
                canRotateLabels: true,
                ticksPosition: ElementsPosition.outside,
                tickOffset: 10,
                showLabels: false,
                majorTickStyle: const MajorTickStyle(
                  length: 5,
                  color: ColorStyles.yellowGreen,
                ),
                minorTickStyle: const MinorTickStyle(
                  color: ColorStyles.yellowGreen,
                ),
                axisLineStyle: const AxisLineStyle(
                  cornerStyle: CornerStyle.bothCurve,
                  thickness: 15,
                  color: ColorStyles.antiFlashWhite,
                ),
                pointers: const [
                  RangePointer(
                    value: 50,
                    cornerStyle: CornerStyle.bothCurve,
                    width: 15,
                    enableAnimation: true,
                    animationDuration: 1500,
                    color: ColorStyles.red400,
                  )
                ],
              ),
            ],
          ),
          Text(
            '65%',
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
