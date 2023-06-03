import 'package:flutter/material.dart';
import 'package:smarthealthy/data/models/recipe_step.model.dart';
import 'package:smarthealthy/presentation/recipe_detail/widgets/recipe_step/step_info.widget.dart';
import 'package:smarthealthy/presentation/recipe_detail/widgets/recipe_step/stepper_line.widget.dart';

class StepperAndStepPageView extends StatefulWidget {
  final List<RecipeStepModel> steps;
  final PageController pageController;

  const StepperAndStepPageView({
    super.key,
    required this.steps,
    required this.pageController,
  });

  @override
  State<StepperAndStepPageView> createState() => _StepperAndStepPageViewState();
}

class _StepperAndStepPageViewState extends State<StepperAndStepPageView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StepperLine(
          pageController: widget.pageController,
          itemCount: widget.steps.length,
        ),
        Expanded(
          child: PageView.builder(
            itemCount: widget.steps.length,
            controller: widget.pageController,
            physics: const ClampingScrollPhysics(),
            itemBuilder: (context, index) {
              return StepInfo(
                currentStep: widget.steps[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
