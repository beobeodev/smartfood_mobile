import 'package:flutter/material.dart';
import 'package:smarthealthy/common/enums/macros_type.enum.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class MacrosLinear extends StatelessWidget {
  final MacrosType type;
  final double value;

  const MacrosLinear({super.key, required this.type, this.value = 0});

  Color _getColor() {
    return switch (type) {
      MacrosType.protein => ColorStyles.mediumAquamarine,
      MacrosType.fat => ColorStyles.brilliantLavender,
      MacrosType.carbs => ColorStyles.lightSkyBlue,
    };
  }

  @override
  Widget build(BuildContext context) {
    return SfLinearGauge(
      animateRange: true,
      axisTrackStyle: const LinearAxisTrackStyle(
        thickness: 10,
        edgeStyle: LinearEdgeStyle.bothCurve,
        color: ColorStyles.antiFlashWhite,
      ),
      barPointers: [
        LinearBarPointer(
          value: value,
          thickness: 10,
          color: _getColor(),
          edgeStyle: LinearEdgeStyle.bothCurve,
        )
      ],
      showLabels: false,
      showTicks: false,
    );
  }
}
