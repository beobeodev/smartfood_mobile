library weight_slider;

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/widgets/weight_slider/weight_slider_internal.widget.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';

class WeightSlider extends StatelessWidget {
  final int weight;
  final int minWeight;
  final int maxWeight;
  final String unit;
  final ValueChanged<int> onChange;

  const WeightSlider({
    Key? key,
    this.weight = 50,
    this.minWeight = 30,
    this.maxWeight = 200,
    this.unit = 'kg',
    required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            LocaleKeys.measure_weight.tr(),
            style:
                TextStyles.s17BoldText.copyWith(color: ColorStyles.yellowGreen),
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return WeightSliderInternal(
                minValue: minWeight,
                maxValue: maxWeight,
                value: weight,
                unit: unit,
                onChange: onChange,
                width: constraints.maxWidth,
              );
            },
          ),
        ),
        const Icon(
          Icons.arrow_drop_up,
          size: 40.0,
          color: ColorStyles.yellowGreen,
        ),
      ],
    );
  }
}
