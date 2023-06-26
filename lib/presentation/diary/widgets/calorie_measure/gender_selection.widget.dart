import 'package:flutter/material.dart';
import 'package:smarthealthy/generated/assets.gen.dart';
import 'package:smarthealthy/presentation/diary/widgets/calorie_measure/default_measure_container.widget.dart';

class GenderSelection extends StatelessWidget {
  final double size;
  final ValueNotifier<bool> genderNotifier;

  const GenderSelection({
    super.key,
    required this.size,
    required this.genderNotifier,
  });

  void _changeGender(bool value) {
    genderNotifier.value = value;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: genderNotifier,
      builder: (context, value, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => _changeGender(false),
              child: DefaultMeasureContainer(
                size: size,
                isSelected: !value,
                child: Assets.images.bmi.woman.svg(
                  height: size / 1.2,
                ),
              ),
            ),
            GestureDetector(
              onTap: () => _changeGender(true),
              child: DefaultMeasureContainer(
                size: size,
                isSelected: value,
                child: Assets.images.bmi.man.svg(
                  height: size / 1.2,
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
