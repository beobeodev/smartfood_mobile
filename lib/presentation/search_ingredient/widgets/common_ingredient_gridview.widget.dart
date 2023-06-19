import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/app_size.dart';

class CommonIngredientGridView extends StatelessWidget {
  final int? itemCount;
  final Widget Function(BuildContext, int) itemBuilder;

  const CommonIngredientGridView({
    super.key,
    this.itemCount,
    required this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(top: AppSize.horizontalSpacing),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 1 / 1.35,
      ),
      itemCount: itemCount,
      itemBuilder: itemBuilder,
    );
  }
}
