import 'package:flutter/material.dart';
import 'package:smarthealthy/generated/assets.gen.dart';
import 'package:smarthealthy/presentation/diary/widgets/calorie_measure/default_measure_container.widget.dart';

class GenderSelection extends StatelessWidget {
  final double size;

  const GenderSelection({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DefaultMeasureContainer(
          size: size,
          child: Assets.images.bmi.woman.svg(
            height: size / 1.2,
          ),
        ),
        DefaultMeasureContainer(
          size: size,
          child: Assets.images.bmi.man.svg(
            height: size / 1.2,
          ),
        )
      ],
    );
  }
}
