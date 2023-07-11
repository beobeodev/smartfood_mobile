import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/widgets/app_carousel_slider.widget.dart';
import 'package:smarthealthy/data/models/recipe_step.model.dart';

class StepInfo extends StatefulWidget {
  final RecipeStepModel currentStep;

  const StepInfo({super.key, required this.currentStep});

  @override
  State<StepInfo> createState() => _StepInfoState();
}

class _StepInfoState extends State<StepInfo>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Column(
      children: [
        if (widget.currentStep.media != null &&
            widget.currentStep.media!.isNotEmpty)
          AppCarouselSlider(
            items: widget.currentStep.media!.map(
              (item) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    item.url,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                );
              },
            ).toList(),
          ),
        Expanded(
          child: Padding(
            padding: AppSize.mealPadding,
            child: Text(
              widget.currentStep.content,
              style: TextStyles.s14MediumText,
            ),
          ),
        )
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
