import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartfood/common/widgets/app_safe_area.widget.dart';
import 'package:smartfood/modules/recipe/recipe.dart';
import 'package:smartfood/modules/recipe/widgets/find_ingredient/ingredient_fab.widget.dart';
import 'package:smartfood/modules/recipe/widgets/find_ingredient/list_searched_ingredients.widget.dart';
import 'package:smartfood/modules/recipe/widgets/find_ingredient/search_bar.widget.dart';

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
          children: const [
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: SearchBar(),
            ),
            ListSearchedIngredients()
          ],
        ),
      ),
      floatingActionButton: const IngredientFAB(),
      backgroundColor: Colors.white,
    );
  }
}
