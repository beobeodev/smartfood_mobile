import 'package:flutter/material.dart';
import 'package:smarthealthy/common/enums/gender_type.enum.dart';
import 'package:smarthealthy/generated/assets.gen.dart';
import 'package:smarthealthy/presentation/diary/widgets/calorie_measure/default_measure_container.widget.dart';

class GenderSelection extends StatelessWidget {
  final double size;
  final ValueNotifier<GenderType> genderNotifier;

  const GenderSelection({
    super.key,
    required this.size,
    required this.genderNotifier,
  });

  void _changeGender(GenderType type) {
    genderNotifier.value = type;
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
              onTap: () => _changeGender(GenderType.female),
              child: DefaultMeasureContainer(
                size: size,
                isSelected: value == GenderType.female,
                child: Assets.images.bmi.woman.svg(
                  height: size / 1.2,
                ),
              ),
            ),
            GestureDetector(
              onTap: () => _changeGender(GenderType.male),
              child: DefaultMeasureContainer(
                size: size,
                isSelected: value == GenderType.male,
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
