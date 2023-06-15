import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/constants/enums/query_status.enum.dart';
import 'package:smarthealthy/common/constants/enums/query_type.enum.dart';
import 'package:smarthealthy/common/widgets/common_error.widget.dart';
import 'package:smarthealthy/common/widgets/loading_dot.widget.dart';
import 'package:smarthealthy/data/repositories/recipe.repository.dart';
import 'package:smarthealthy/di/di.dart';
import 'package:smarthealthy/presentation/recipe_filter/recipe_filter.dart';
import 'package:smarthealthy/presentation/search_recipe/search_recipe.dart';
import 'package:smarthealthy/presentation/search_recipe/widgets/recipe_inherited.widget.dart';
import 'package:smarthealthy/presentation/search_recipe/widgets/recipe_list.widget.dart';
import 'package:smarthealthy/presentation/search_recipe/widgets/recipe_search_bar.widget.dart';

class RecipeListPage extends StatelessWidget {
  final List<String>? ingredientIds;

  const RecipeListPage({super.key, required this.ingredientIds});

  void _listenBlocChanged(BuildContext context, SearchRecipeState state) {
    if (state.queryStatus.type == QueryType.initial) {
      context.read<RecipeFilterBloc>().add(const RecipeFilterEvent.reset());
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SearchRecipeBloc(
        recipeRepository: getIt.get<RecipeRepository>(),
      )..add(
          ingredientIds == null
              ? const SearchRecipeEvent.getAll()
              : SearchRecipeEvent.getByIngredients(ingredientIds!),
        ),
      child: BlocListener<SearchRecipeBloc, SearchRecipeState>(
        listener: (context, state) => _listenBlocChanged(context, state),
        child: RecipeListProvider(
          autoFocus: ingredientIds == null,
          child: const _RecipeListView(),
        ),
      ),
    );
  }
}

class _RecipeListView extends StatelessWidget {
  const _RecipeListView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const RecipeSearchBar(),
      body: BlocBuilder<SearchRecipeBloc, SearchRecipeState>(
        builder: (context, state) {
          switch (state.queryStatus.status) {
            case QueryStatus.loading:
              return const LoadingDot();
            case QueryStatus.success:
              return const RecipeList();
            case QueryStatus.error:
              return const CommonError();
          }
        },
        buildWhen: (previous, current) =>
            previous.queryStatus != current.queryStatus &&
            current.queryStatus.type == QueryType.initial,
      ),
      backgroundColor: Colors.white,
    );
  }
}
