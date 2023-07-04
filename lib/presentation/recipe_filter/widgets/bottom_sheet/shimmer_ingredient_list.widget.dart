import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/widgets/common_shimmer.widget.dart';

class ShimmerIngredientList extends StatelessWidget {
  const ShimmerIngredientList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 30,
      separatorBuilder: (context, index) => AppSize.h10,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSize.horizontalSpacing,
        vertical: 10,
      ),
      itemBuilder: (context, index) {
        return const SizedBox(
          height: AppSize.ingredientListItemHeight,
          child: CommonShimmer(),
        );
      },
    );
  }
}
