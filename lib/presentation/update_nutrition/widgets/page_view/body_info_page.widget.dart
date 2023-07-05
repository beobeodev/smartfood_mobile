import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/enums/gender_type.enum.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/widgets/height_slider.widget.dart';
import 'package:smarthealthy/presentation/update_nutrition/widgets/gender_selection.widget.dart';
import 'package:smarthealthy/presentation/update_nutrition/widgets/weight_age_selection.widget.dart';

class BodyInfoPage extends StatelessWidget {
  final ValueNotifier<GenderType> genderNotifier;
  final double height;
  final void Function(double) onHeightChanged;
  final ValueNotifier<int> weightNotifier;
  final ValueNotifier<int> ageNotifier;

  const BodyInfoPage({
    super.key,
    required this.genderNotifier,
    required this.height,
    required this.onHeightChanged,
    required this.weightNotifier,
    required this.ageNotifier,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSize.horizontalSpacing,
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final itemSize = (constraints.maxWidth - 40) / 2;

          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GenderSelection(
                size: itemSize,
                genderNotifier: genderNotifier,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 40.h),
                child: HeightSlider(
                  initialValue: height,
                  onChanged: onHeightChanged,
                ),
              ),
              WeightAgeSelection(
                size: itemSize,
                weightNotifier: weightNotifier,
                ageNotifier: ageNotifier,
              ),
            ],
          );
        },
      ),
    );
  }
}
