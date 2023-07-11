import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class MacrosLinear extends StatelessWidget {
  final Color color;
  final int value;
  final int maxValue;

  const MacrosLinear({
    super.key,
    required this.color,
    this.value = 0,
    this.maxValue = 200,
  });

  @override
  Widget build(BuildContext context) {
    return SfLinearGauge(
      animateRange: true,
      axisTrackStyle: const LinearAxisTrackStyle(
        thickness: 10,
        edgeStyle: LinearEdgeStyle.bothCurve,
        color: ColorStyles.antiFlashWhite,
      ),
      maximum: maxValue.toDouble(),
      barPointers: [
        LinearBarPointer(
          value: value.toDouble(),
          thickness: 10,
          color: color,
          edgeStyle: LinearEdgeStyle.bothCurve,
        )
      ],
      showLabels: false,
      showTicks: false,
    );
  }
}
