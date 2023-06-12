import 'package:flutter/material.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/calorie_radial_gauge.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/left_consumed_total_calorie.widget.dart';

class CalorieInDay extends StatelessWidget {
  const CalorieInDay({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final itemSize = constraints.maxWidth / 2;

        return Row(
          children: [
            CalorieRadialGauge(
              itemSize: itemSize,
            ),
            LeftConsumedTotalCalorie(itemSize: itemSize)
          ],
        );
      },
    );
  }
}
