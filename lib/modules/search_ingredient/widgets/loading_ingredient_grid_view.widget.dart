import 'package:flutter/material.dart';
import 'package:smartfood/common/extensions/context.extension.dart';
import 'package:smartfood/common/theme/app_size.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smartfood/common/theme/color_styles.dart';

class LoadingIngredientGridView extends StatelessWidget {
  const LoadingIngredientGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(top: AppSize.horizontalSpace),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: context.width > 375 ? 3 : 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 1 / 1.35,
      ),
      itemBuilder: (_, index) {
        return Shimmer.fromColors(
          baseColor: ColorStyles.antiFlashWhite,
          highlightColor: ColorStyles.gray100,
          child: Container(
            decoration: BoxDecoration(
              color: ColorStyles.antiFlashWhite,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        );
      },
    );
  }
}
