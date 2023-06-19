import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/presentation/recipe_filter/widgets/category_filter_section.widget.dart';
import 'package:smarthealthy/presentation/recipe_filter/widgets/cuisine_filter_section.widget.dart';
import 'package:smarthealthy/presentation/recipe_filter/widgets/ingredient_filter_section.widget.dart';
import 'package:smarthealthy/presentation/recipe_filter/widgets/level_filter_section.widget.dart';

class RecipeFilterBody extends StatelessWidget {
  const RecipeFilterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.all(AppSize.horizontalSpacing),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IngredientFilterSection(),
          AppSize.h10,
          LevelFilterSection(),
          AppSize.h10,
          CategoryFilterSection(),
          AppSize.h10,
          CuisineFilterSection(),
        ],
      ),
    );
  }
}
