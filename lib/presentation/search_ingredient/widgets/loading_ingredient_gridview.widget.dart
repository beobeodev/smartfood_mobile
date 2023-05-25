import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/presentation/search_ingredient/widgets/common_ingredient_gridview.widget.dart';

class LoadingIngredientGridView extends StatelessWidget {
  const LoadingIngredientGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CommonIngredientGridView(
      itemBuilder: (context, index) {
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
