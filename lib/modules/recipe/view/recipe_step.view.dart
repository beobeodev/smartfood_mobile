import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartfood/common/theme/color_styles.dart';
import 'package:smartfood/common/widgets/loading_dot.widget.dart';
import 'package:smartfood/data/repositories/recipe.repository.dart';
import 'package:smartfood/di/di.dart';
import 'package:smartfood/modules/recipe/recipe.dart';
import 'package:smartfood/modules/recipe/widgets/recipe_step/step_page_view.widget.dart';

class RecipeStepPage extends StatelessWidget {
  const RecipeStepPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => RecipeStepBloc(
        recipeRepository: getIt.get<RecipeRepository>(),
      ),
      child: const _RecipeStepView(),
    );
  }
}

class _RecipeStepView extends StatelessWidget {
  const _RecipeStepView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<RecipeStepBloc, RecipeStepState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => const SizedBox(),
            loading: (_) => const Center(
              child: LoadingDot(
                size: 10,
                dotColor: ColorStyles.primary,
              ),
            ),
            success: (success) => StepPageView(steps: success.steps),
            failure: (_) => const Center(child: Text('Error')),
          );
        },
      ),
      backgroundColor: Colors.white,
    );
  }
}
