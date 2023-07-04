import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class CommonRadialGauge extends StatelessWidget {
  final double value;

  const CommonRadialGauge({super.key, this.value = 0});

  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
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
          pointers: [
            RangePointer(
              value: value,
              cornerStyle: CornerStyle.bothCurve,
              width: 15,
              enableAnimation: true,
              animationDuration: 1500,
              color: ColorStyles.red400,
            )
          ],
        ),
      ],
    );
  }
}
