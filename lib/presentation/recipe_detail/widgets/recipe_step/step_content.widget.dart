import 'package:flutter/material.dart';
import 'package:smarthealthy/common/extensions/context.extension.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/widgets/app_rounded_button.widget.dart';
import 'package:smarthealthy/data/models/recipe_step.model.dart';
import 'package:smarthealthy/presentation/recipe_detail/widgets/recipe_step/stepper_and_step_pageview.widget.dart';

class StepContent extends StatefulWidget {
  final List<RecipeStepModel> steps;

  const StepContent({super.key, required this.steps});

  @override
  State<StepContent> createState() => _StepContentState();
}

class _StepContentState extends State<StepContent> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        StepperAndStepPageView(
          steps: widget.steps,
          pageController: _pageController,
        ),
        Positioned(
          bottom: context.paddingBottom,
          width: context.width / 2,
          child: AppRoundedButton(
            onPressed: () {
              _pageController.animateToPage(
                (_pageController.page! + 1).round(),
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            },
            content: 'Tiếp theo',
            backgroundColor: ColorStyles.primary,
          ),
        )
      ],
    );
  }
}
