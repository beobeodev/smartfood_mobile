import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/enums/filter_type.enum.dart';
import 'package:smarthealthy/common/widgets/common_app_bar.widget.dart';
import 'package:smarthealthy/data/dtos/recipe_filter.dto.dart';
import 'package:smarthealthy/presentation/recipe_filter/recipe_filter.dart';
import 'package:smarthealthy/presentation/recipe_filter/widgets/recipe_filter_body.widget.dart';
import 'package:smarthealthy/presentation/search_recipe/bloc/search_recipe.bloc.dart';

class RecipeFilterPage extends StatelessWidget {
  const RecipeFilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _RecipeFilterView();
  }
}

class _RecipeFilterView extends StatelessWidget {
  const _RecipeFilterView();

  void _onLeadingAction(BuildContext context) {
    final state = context.read<RecipeFilterBloc>().state;

    context.read<SearchRecipeBloc>().add(
          SearchRecipeEvent.applyFilters([
            RecipeFilterDTO(
              type: RecipeFilterType.level,
              values: state.levels
                  .where((element) => element.isChosen)
                  .map((e) => e.name.value)
                  .toList(),
            ),
            RecipeFilterDTO(
              type: RecipeFilterType.category,
              values: state.categories
                  .where((element) => element.isChosen)
                  .map((e) => e.name)
                  .toList(),
            ),
            RecipeFilterDTO(
              type: RecipeFilterType.cuisine,
              values: state.cuisines
                  .where((element) => element.isChosen)
                  .map((e) => e.name)
                  .toList(),
            )
          ]),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: 'Filter',
        onLeadingAction: () => _onLeadingAction(context),
      ),
      body: const RecipeFilterBody(),
    );
  }
}
