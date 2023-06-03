import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:im_stepper/stepper.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';

class StepperLine extends StatelessWidget {
  final PageController pageController;
  final int itemCount;

  const StepperLine({
    super.key,
    required this.pageController,
    required this.itemCount,
  });

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: pageController,
      builder: (context, child) {
        return NumberStepper(
          numbers: List.generate(itemCount, (index) => index + 1),
          enableNextPreviousButtons: false,
          stepColor: ColorStyles.gray100,
          activeStepColor: ColorStyles.yellowGreen,
          activeStepBorderColor: ColorStyles.primary,
          lineColor: ColorStyles.gray200,
          stepRadius: 18.w,
          numberStyle: TextStyles.s14MediumText,
          activeTextColor: Colors.white,
          stepReachedAnimationDuration: const Duration(milliseconds: 300),
          stepReachedAnimationEffect: Curves.easeIn,
          onStepReached: (index) {
            pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn,
            );
          },
          activeStep:
              pageController.hasClients ? pageController.page!.round() : 0,
        );
      },
    );
  }
}
