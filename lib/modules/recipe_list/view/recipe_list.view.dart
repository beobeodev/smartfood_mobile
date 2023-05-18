import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartfood/common/theme/color_styles.dart';
import 'package:smartfood/common/widgets/custom_app_bar.widget.dart';
import 'package:smartfood/common/widgets/loading_dot.widget.dart';
import 'package:smartfood/data/repositories/recipe.repository.dart';
import 'package:smartfood/di/di.dart';
import 'package:smartfood/modules/recipe_list/recipe_list.dart';

class RecipeListPage extends StatelessWidget {
  final List<String> ingredientIds;

  const RecipeListPage({super.key, required this.ingredientIds});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => RecipeListBloc(
        recipeRepository: getIt.get<RecipeRepository>(),
      )..add(RecipeListEvent.get(ingredientIds)),
      child: const _RecipeListView(),
    );
  }
}

class _RecipeListView extends StatelessWidget {
  const _RecipeListView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Danh sách công thức',
        titleColor: ColorStyles.primary,
        backgroundColor: Colors.white,
      ),
      body: BlocBuilder<RecipeListBloc, RecipeListState>(
        builder: (context, state) {
          return state.when(
            loading: () => const Center(child: LoadingDot()),
            success: (recipes) => ListView.builder(
              itemCount: recipes.length,
              itemBuilder: (context, index) {
                final recipe = recipes[index];
                return ListTile(
                  title: Text(recipe.name),
                  subtitle: Text(recipe.description),
                );
              },
            ),
            failure: () => const SizedBox(),
          );
        },
      ),
    );
  }
}
