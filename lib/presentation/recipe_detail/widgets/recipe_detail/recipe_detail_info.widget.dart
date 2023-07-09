import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/widgets/common_error.widget.dart';
import 'package:smarthealthy/common/widgets/loading_dot.widget.dart';
import 'package:smarthealthy/presentation/recipe_detail/recipe_detail.dart';
import 'package:smarthealthy/presentation/recipe_detail/widgets/recipe_detail/list_quantification.widget.dart';
import 'package:smarthealthy/presentation/recipe_detail/widgets/recipe_detail/rating_bar.widget.dart';
import 'package:smarthealthy/presentation/recipe_detail/widgets/recipe_detail/recipe_description.widget.dart';

class RecipeDetailInfo extends StatelessWidget {
  const RecipeDetailInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocBuilder<RecipeDetailBloc, RecipeDetailState>(
        builder: (context, state) {
          return state.map(
            loading: (_) => const LoadingDot(),
            success: (success) {
              final recipe = success.recipe;

              return Padding(
                padding: const EdgeInsets.fromLTRB(
                  AppSize.horizontalSpacing,
                  AppSize.horizontalSpacing,
                  AppSize.horizontalSpacing,
                  100,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (recipe.description != null &&
                        recipe.description!.isNotEmpty)
                      RecipeDescription(
                        description: recipe.description!,
                      ),
                    if (recipe.quantification != null)
                      ListQuantification(
                        quantification: recipe.quantification!,
                      ),
                    AppSize.h20,
                    RatingBar(
                      recipe: recipe,
                    )
                  ],
                ),
              );
            },
            failure: (_) => const CommonError(),
          );
        },
      ),
    );
  }
}
