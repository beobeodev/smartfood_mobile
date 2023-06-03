import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/constants/enums/query_status.enum.dart';
import 'package:smarthealthy/common/constants/enums/query_type.enum.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/widgets/common_error.widget.dart';
import 'package:smarthealthy/common/widgets/loading_dot.widget.dart';
import 'package:smarthealthy/data/repositories/recipe.repository.dart';
import 'package:smarthealthy/di/di.dart';
import 'package:smarthealthy/presentation/recipe_filter/recipe_filter.dart';
import 'package:smarthealthy/presentation/recipe_list/recipe_list.dart';
import 'package:smarthealthy/presentation/recipe_list/widgets/recipe_inherited.widget.dart';
import 'package:smarthealthy/presentation/recipe_list/widgets/recipe_list.widget.dart';
import 'package:smarthealthy/presentation/recipe_list/widgets/recipe_search_bar.widget.dart';

class RecipeListPage extends StatelessWidget {
  final List<String>? ingredientIds;

  const RecipeListPage({super.key, required this.ingredientIds});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => RecipeListBloc(
        recipeRepository: getIt.get<RecipeRepository>(),
        recipeFilterBloc: context.read<RecipeFilterBloc>(),
      )..add(
          ingredientIds == null
              ? const RecipeListEvent.getAll()
              : RecipeListEvent.getByIngredients(ingredientIds!),
        ),
      child: RecipeListProvider(
        autoFocus: ingredientIds == null,
        child: const _RecipeListView(),
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
      body: BlocBuilder<RecipeListBloc, RecipeListState>(
        builder: (context, state) {
          switch (state.queryStatus.status) {
            case QueryStatus.loading:
              return const LoadingDot(
                dotColor: ColorStyles.yellowGreen,
              );
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
