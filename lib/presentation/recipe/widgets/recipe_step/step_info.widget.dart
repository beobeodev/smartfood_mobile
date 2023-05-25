import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/widgets/carousel_slider/app_carousel_slider.widget.dart';
import 'package:smarthealthy/data/models/step.model.dart';

class StepInfo extends StatefulWidget {
  final RecipeStep currentStep;

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
        AppCarouselSlider(
          items: widget.currentStep.images.map(
            (item) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  item,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              );
            },
          ).toList(),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(
              AppSize.horizontalSpace,
              10,
              AppSize.horizontalSpace,
              0,
            ),
            child: Text(
              widget.currentStep.description,
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
