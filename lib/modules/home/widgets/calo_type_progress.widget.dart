import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:smartfood/common/theme/color_styles.dart';
import 'package:smartfood/common/theme/text_styles.dart';

class CalorieTypeProgress extends StatelessWidget {
  const CalorieTypeProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [CalorieTypeTile(), CalorieTypeTile(), CalorieTypeTile()],
      ),
    );
  }
}

class CalorieTypeTile extends StatelessWidget {
  const CalorieTypeTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Carbs',
          style: TextStyles.s14MediumText.copyWith(color: Colors.white),
        ),
        const SizedBox(
          height: 5,
        ),
        LayoutBuilder(
          builder: (context, constraints) {
            return LinearPercentIndicator(
              width: constraints.maxWidth,
              animation: true,
              lineHeight: 6,
              animationDuration: 2500,
              percent: 0.8,
              progressColor: Colors.white,
              barRadius: const Radius.circular(200),
              padding: EdgeInsets.zero,
              backgroundColor: ColorStyles.tint100.withOpacity(0.2),
            );
          },
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          '14/32 g',
          style: TextStyles.s14MediumText.copyWith(color: Colors.white),
        )
      ],
    );
  }
}
