import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/constants/enums/query_status.enum.dart';
import 'package:smarthealthy/common/constants/enums/query_type.enum.dart';
import 'package:smarthealthy/common/widgets/common_error.widget.dart';
import 'package:smarthealthy/common/widgets/loading_dot.widget.dart';
import 'package:smarthealthy/data/models/ingredient.model.dart';
import 'package:smarthealthy/data/repositories/recipe.repository.dart';
import 'package:smarthealthy/di/di.dart';
import 'package:smarthealthy/presentation/recipe_filter/recipe_filter.dart';
import 'package:smarthealthy/presentation/search_recipe/search_recipe.dart';
import 'package:smarthealthy/presentation/search_recipe/widgets/recipe_inherited.widget.dart';
import 'package:smarthealthy/presentation/search_recipe/widgets/recipe_list.widget.dart';
import 'package:smarthealthy/presentation/search_recipe/widgets/recipe_search_bar.widget.dart';

class SearchRecipePage extends StatelessWidget {
  final List<IngredientModel>? ingredients;

  const SearchRecipePage({super.key, required this.ingredients});

  void _listenBlocChanged(BuildContext context, SearchRecipeState state) {
    if (state.queryInfo.type == QueryType.initial) {
      context.read<RecipeFilterBloc>().add(const RecipeFilterEvent.reset());
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SearchRecipeBloc(
        recipeRepository: getIt.get<RecipeRepository>(),
      )..add(
          ingredients == null
              ? const SearchRecipeEvent.getAll()
              : SearchRecipeEvent.getByIngredients(ingredients!),
        ),
      child: BlocListener<SearchRecipeBloc, SearchRecipeState>(
        listener: (context, state) => _listenBlocChanged(context, state),
        child: RecipeListProvider(
          autoFocus: ingredients == null,
          child: const _SearchRecipeView(),
        ),
      ),
    );
  }
}

class _SearchRecipeView extends StatelessWidget {
  const _SearchRecipeView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const RecipeSearchBar(),
      body: BlocBuilder<SearchRecipeBloc, SearchRecipeState>(
        builder: (context, state) {
          switch (state.queryInfo.status) {
            case QueryStatus.loading:
              return const LoadingDot();
            case QueryStatus.success:
              return const RecipeList();
            case QueryStatus.error:
              return const CommonError();
          }
        },
        buildWhen: (previous, current) =>
            previous.queryInfo != current.queryInfo &&
            current.queryInfo.type == QueryType.initial,
      ),
      backgroundColor: Colors.white,
    );
  }
}
