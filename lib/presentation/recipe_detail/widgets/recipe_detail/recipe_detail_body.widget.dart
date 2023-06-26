import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/data/models/recipe.model.dart';
import 'package:smarthealthy/presentation/recipe_detail/widgets/recipe_detail/list_quantification.widget.dart';
import 'package:smarthealthy/presentation/recipe_detail/widgets/recipe_detail/recipe_description.widget.dart';

class RecipeDetailBody extends StatelessWidget {
  final RecipeModel recipe;

  const RecipeDetailBody({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          AppSize.horizontalSpacing,
          AppSize.horizontalSpacing,
          AppSize.horizontalSpacing,
          100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (recipe.description != null && recipe.description!.isNotEmpty)
              RecipeDescription(
                description: recipe.description!,
              ),
            if (recipe.quantification != null)
              ListQuantification(
                quantification: recipe.quantification!,
              ),
            AppSize.h5,
          ],
        ),
      ),
    );
  }
}
