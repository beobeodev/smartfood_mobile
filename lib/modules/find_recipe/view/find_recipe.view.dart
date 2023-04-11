import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartfood/common/widgets/app_safe_area.widget.dart';
import 'package:smartfood/modules/find_recipe/bloc/find_recipe.bloc.dart';
import 'package:smartfood/modules/find_recipe/widgets/ingredient_fab.widget.dart';
import 'package:smartfood/modules/find_recipe/widgets/list_searched_ingredients.widget.dart';
import 'package:smartfood/modules/find_recipe/widgets/search_bar.widget.dart';

class FindRecipePage extends StatelessWidget {
  const FindRecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FindRecipeBloc(),
      child: const _FindRecipeView(),
    );
  }
}

class _FindRecipeView extends StatelessWidget {
  const _FindRecipeView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppSafeArea(
        child: Column(
          children: const [SearchBar(), ListSearchedIngredients()],
        ),
      ),
      floatingActionButton: const IngredientFAB(),
      backgroundColor: Colors.white,
    );
  }
}
