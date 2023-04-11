import 'package:flutter/material.dart';
import 'package:smartfood/common/theme/app_size.dart';
import 'package:smartfood/common/theme/color_styles.dart';

class ListSearchedIngredients extends StatelessWidget {
  const ListSearchedIngredients({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: const EdgeInsets.only(top: AppSize.horizontalSpace),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: AppSize.horizontalSpace,
          crossAxisSpacing: AppSize.horizontalSpace,
          childAspectRatio: 1 / 1.15,
        ),
        itemBuilder: (_, index) {
          return Container(
            decoration: BoxDecoration(
              color: ColorStyles.antiFlashWhite,
              borderRadius: BorderRadius.circular(10),
            ),
          );
        },
      ),
    );
  }
}
