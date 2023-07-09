import 'package:flutter/material.dart';
import 'package:smarthealthy/data/models/recipe.model.dart';
import 'package:smarthealthy/presentation/recipe_detail/widgets/recipe_detail/recipe_detail_appbar.widget.dart';
import 'package:smarthealthy/presentation/recipe_detail/widgets/recipe_detail/recipe_detail_info.widget.dart';
import 'package:smarthealthy/presentation/recipe_detail/widgets/recipe_detail/start_cooking_button.widget.dart';

class RecipeDetailBody extends StatelessWidget {
  final RecipeModel recipe;

  const RecipeDetailBody({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CustomScrollView(
          slivers: [
            RecipeDetailAppBar(recipe: recipe),
            const RecipeDetailInfo()
          ],
        ),
        const StartCookingButton()
      ],
    );
  }
}
