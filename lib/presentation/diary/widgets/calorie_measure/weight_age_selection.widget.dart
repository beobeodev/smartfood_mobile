import 'package:flutter/material.dart';
import 'package:smarthealthy/common/widgets/weight_slider/weight_slider.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/calorie_measure/age_selection.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/calorie_measure/default_measure_container.widget.dart';

class WeightAgeSelection extends StatelessWidget {
  final double size;
  final ValueNotifier<int> weightNotifier;

  const WeightAgeSelection({
    super.key,
    required this.size,
    required this.weightNotifier,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DefaultMeasureContainer(
          size: size,
          child: ValueListenableBuilder(
            valueListenable: weightNotifier,
            builder: (context, value, child) {
              return WeightSlider(
                weight: value,
                onChange: (newValue) {
                  weightNotifier.value = newValue;
                },
              );
            },
          ),
        ),
        AgeSelection(size: size)
      ],
    );
  }
}
