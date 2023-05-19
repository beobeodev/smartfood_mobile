import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartfood/data/repositories/recipe.repository.dart';
import 'package:smartfood/di/di.dart';
import 'package:smartfood/modules/recipe_list/recipe_list.dart';
import 'package:smartfood/modules/recipe_list/widgets/recipe_list.widget.dart';
import 'package:smartfood/modules/recipe_list/widgets/recipe_list_app_bar.widget.dart';

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
    return const Scaffold(
      appBar: RecipeListAppBar(),
      body: RecipeList(),
      backgroundColor: Colors.white,
    );
  }
}
