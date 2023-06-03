import 'package:flutter/material.dart';
import 'package:smarthealthy/common/extensions/context.extension.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/widgets/app_rounded_button.widget.dart';
import 'package:smarthealthy/data/models/recipe.model.dart';
import 'package:smarthealthy/presentation/recipe_detail/widgets/recipe_detail/recipe_detail_appbar.widget.dart';
import 'package:smarthealthy/presentation/recipe_detail/widgets/recipe_detail/recipe_detail_body.widget.dart';
import 'package:smarthealthy/router/app_router.dart';
import 'package:unicons/unicons.dart';

class RecipeDetail extends StatelessWidget {
  final RecipeModel recipe;

  const RecipeDetail({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CustomScrollView(
          slivers: [
            RecipeDetailAppBar(recipe: recipe),
            RecipeDetailBody(recipe: recipe)
          ],
        ),
        Positioned(
          bottom: context.paddingBottom > 0
              ? context.paddingBottom
              : AppSize.horizontalSpace,
          width: context.width / 2,
          child: AppRoundedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                AppRouter.recipeStep,
                arguments: recipe.recipeStep,
              );
            },
            content: 'Start cooking',
            suffixIcon: const Icon(
              UniconsLine.play_circle,
              color: Colors.white,
              size: 27,
            ),
            backgroundColor: ColorStyles.primary,
          ),
        )
      ],
    );
  }
}
