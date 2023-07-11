import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/widgets/common_shimmer.widget.dart';

class MealLoadingList extends StatelessWidget {
  const MealLoadingList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 2,
      shrinkWrap: true,
      padding: AppSize.mealPadding,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (_, __) => AppSize.h10,
      itemBuilder: (context, index) {
        return CommonShimmer(
          borderRadius: AppSize.cardRadius,
          width: double.infinity,
          height: (AppSize.dishCardAvatarSize +
              2 * AppSize.dishCardVerticalPadding),
        );
      },
    );
  }
}
