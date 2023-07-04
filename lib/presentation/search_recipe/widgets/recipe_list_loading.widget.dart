import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/widgets/common_shimmer.widget.dart';

class RecipeListLoading extends StatelessWidget {
  const RecipeListLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(AppSize.horizontalSpacing),
      itemCount: 40,
      shrinkWrap: true,
      separatorBuilder: (_, __) => AppSize.h20,
      itemBuilder: (context, index) {
        return CommonShimmer(
          height: AppSize.recipeCardHeight.h,
        );
      },
    );
  }
}
