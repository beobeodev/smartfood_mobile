import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/extensions/context.extension.dart';
import 'package:smarthealthy/common/widgets/app_safe_area.widget.dart';
import 'package:smarthealthy/common/widgets/height_slider.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/calorie_measure/done_measure_button.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/calorie_measure/gender_selection.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/calorie_measure/weight_age_selection.widget.dart';

class CalorieMeasureView extends StatefulWidget {
  const CalorieMeasureView({super.key});

  @override
  State<CalorieMeasureView> createState() => _CalorieMeasureViewState();
}

class _CalorieMeasureViewState extends State<CalorieMeasureView> {
  final ValueNotifier<int> _weightNotifier = ValueNotifier(50);

  @override
  void dispose() {
    _weightNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppSafeArea(
        paddingBottom: context.bottomSpacing,
        child: LayoutBuilder(
          builder: (context, constrains) {
            final itemSize = (constrains.maxWidth - 40) / 2;

            return Column(
              children: [
                const Spacer(),
                GenderSelection(size: itemSize),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 40.h),
                  child: HeightSlider(
                    onChanged: (value) {},
                  ),
                ),
                WeightAgeSelection(
                  size: itemSize,
                  weightNotifier: _weightNotifier,
                ),
                const DoneMeasureButton()
              ],
            );
          },
        ),
      ),
    );
  }
}
