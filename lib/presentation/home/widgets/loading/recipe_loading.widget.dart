import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/widgets/app_carousel_slider.widget.dart';
import 'package:smarthealthy/common/widgets/common_shimmer.widget.dart';

class RecipeTodayLoading extends StatelessWidget {
  const RecipeTodayLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: AppSize.horizontalSpacing),
          child: CommonShimmer(
            width: 200,
            height: 20,
          ),
        ),
        AppSize.h10,
        AppCarouselSlider(
          showIndicator: false,
          items: List.generate(
            10,
            (index) => const CommonShimmer(
              borderRadius: AppSize.cardRadius,
            ),
          ),
        )
      ],
    );
  }
}
