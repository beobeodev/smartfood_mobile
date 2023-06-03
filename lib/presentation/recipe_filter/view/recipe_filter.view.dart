import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/constants/enums/filter_type.enum.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/widgets/custom_app_bar.widget.dart';
import 'package:smarthealthy/data/dtos/recipe_filter.dto.dart';
import 'package:smarthealthy/presentation/recipe_filter/recipe_filter.dart';
import 'package:smarthealthy/presentation/recipe_filter/widgets/category_filter_section.widget.dart';
import 'package:smarthealthy/presentation/recipe_filter/widgets/cuisine_filter_section.widget.dart';
import 'package:smarthealthy/presentation/recipe_filter/widgets/level_filter_section.widget.dart';
import 'package:smarthealthy/presentation/recipe_list/bloc/recipe_list.bloc.dart';

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

    context.read<RecipeListBloc>().add(
          RecipeListEvent.applyFilter([
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
      appBar: CustomAppBar(
        title: 'Filter',
        elevation: 1,
        onLeadingAction: () => _onLeadingAction(context),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(AppSize.horizontalSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LevelFilterSection(),
            SizedBox(
              height: 10,
            ),
            CategoryFilterSection(),
            SizedBox(
              height: 10,
            ),
            CuisineFilterSection(),
          ],
        ),
      ),
    );
  }
}
