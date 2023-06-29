import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smarthealthy/common/extensions/context.extension.dart';
import 'package:smarthealthy/common/widgets/app_rounded_button.widget.dart';
import 'package:smarthealthy/data/models/recipe_step.model.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/recipe_detail/widgets/recipe_step/stepper_and_step_pageview.widget.dart';
import 'package:smarthealthy/router/app_router.dart';

class RecipeStepBody extends StatefulWidget {
  final List<RecipeStepModel> steps;

  const RecipeStepBody({super.key, required this.steps});

  @override
  State<RecipeStepBody> createState() => _RecipeStepBodyState();
}

class _RecipeStepBodyState extends State<RecipeStepBody> {
  final PageController _pageController = PageController();
  final ValueNotifier<int> _pageNotifier = ValueNotifier(0);

  @override
  void initState() {
    _pageController.addListener(() {
      _pageNotifier.value = _pageController.page!.round();
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageNotifier.dispose();
    super.dispose();
  }

  void _onPressed(bool isLastPage) {
    if (isLastPage) {
      Navigator.of(context).pushNamedAndRemoveUntil(
        AppRouter.recipeComplete,
        ModalRoute.withName(AppRouter.recipeDetail),
      );

      return;
    }

    _pageController.animateToPage(
      (_pageController.page! + 1).round(),
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

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
          bottom: context.bottomSpacing,
          width: context.width / 2,
          child: ValueListenableBuilder(
            valueListenable: _pageNotifier,
            builder: (context, value, child) {
              final isLastPage = value == widget.steps.length - 1;

              return AppRoundedButton(
                onPressed: () => _onPressed(isLastPage),
                content: isLastPage
                    ? LocaleKeys.button_complete.tr()
                    : LocaleKeys.button_continue.tr(),
              );
            },
          ),
        )
      ],
    );
  }
}
