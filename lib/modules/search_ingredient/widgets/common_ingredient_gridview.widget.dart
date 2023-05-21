import 'package:flutter/material.dart';
import 'package:smartfood/common/extensions/context.extension.dart';
import 'package:smartfood/common/theme/app_size.dart';

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
      padding: const EdgeInsets.only(top: AppSize.horizontalSpace),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: context.width > 375 ? 3 : 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 1 / 1.35,
      ),
      itemCount: itemCount,
      itemBuilder: itemBuilder,
    );
  }
}
