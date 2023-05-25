import 'package:flutter/material.dart';
import 'package:smarthealthy/common/extensions/context.extension.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/widgets/app_rounded_button.widget.dart';
import 'package:smarthealthy/common/widgets/app_safe_area.widget.dart';
import 'package:smarthealthy/data/models/step.model.dart';
import 'package:smarthealthy/presentation/recipe/widgets/recipe_step/step_info.widget.dart';
import 'package:unicons/unicons.dart';

class StepPageView extends StatefulWidget {
  final List<RecipeStep> steps;

  const StepPageView({super.key, required this.steps});

  @override
  State<StepPageView> createState() => _StepPageViewState();
}

class _StepPageViewState extends State<StepPageView> {
  final PageController _pageController = PageController();
  final ValueNotifier<int> _pageNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSafeArea(
              paddingBottom: 20,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  const Positioned(
                    left: 0,
                    child: Icon(
                      UniconsLine.angle_left_b,
                      size: 28,
                      color: ColorStyles.zodiacBlue,
                    ),
                  ),
                  Center(
                    child: ValueListenableBuilder(
                      valueListenable: _pageNotifier,
                      builder: (context, value, child) {
                        return Text(
                          'Bước ${value + 1} / ${widget.steps.length}',
                          style: TextStyles.s17MediumText,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: PageView.builder(
                itemCount: widget.steps.length,
                controller: _pageController,
                onPageChanged: (index) {
                  _pageNotifier.value = index;
                },
                itemBuilder: (context, index) {
                  return StepInfo(
                    currentStep: widget.steps[index],
                  );
                },
              ),
            ),
          ],
        ),
        Positioned(
          bottom: context.paddingBottom,
          width: context.width / 2,
          child: AppRoundedButton(
            onPressed: () {},
            content: 'Tiếp theo',
            backgroundColor: ColorStyles.primary,
          ),
        )
      ],
    );
  }
}
