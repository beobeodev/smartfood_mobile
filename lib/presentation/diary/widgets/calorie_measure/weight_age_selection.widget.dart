import 'package:flutter/material.dart';
import 'package:smarthealthy/common/widgets/weight_slider/weight_slider.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/calorie_measure/age_selection.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/calorie_measure/default_measure_container.widget.dart';

class WeightAgeSelection extends StatelessWidget {
  final double size;
  final ValueNotifier<int> weightNotifier;
  final ValueNotifier<int> ageNotifier;

  const WeightAgeSelection({
    super.key,
    required this.size,
    required this.weightNotifier,
    required this.ageNotifier,
  });

  void _onWeightChanged(BuildContext context, int newValue) {
    weightNotifier.value = newValue;
  }

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
                onChange: (newValue) => _onWeightChanged(context, newValue),
              );
            },
          ),
        ),
        AgeSelection(
          size: size,
          ageNotifier: ageNotifier,
        )
      ],
    );
  }
}
