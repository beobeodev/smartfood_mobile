import 'package:flutter/material.dart';
import 'package:smarthealthy/common/widgets/common_shimmer.widget.dart';
import 'package:smarthealthy/presentation/search_ingredient/widgets/common_ingredient_gridview.widget.dart';

class LoadingIngredientGridView extends StatelessWidget {
  const LoadingIngredientGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CommonIngredientGridView(
      itemBuilder: (context, index) {
        return const CommonShimmer();
      },
    );
  }
}
