import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/enums/query_status.enum.dart';
import 'package:smarthealthy/common/enums/query_type.enum.dart';
import 'package:smarthealthy/common/widgets/common_error.widget.dart';
import 'package:smarthealthy/common/widgets/loading_dot.widget.dart';
import 'package:smarthealthy/data/models/recipe.model.dart';
import 'package:smarthealthy/presentation/search_recipe/search_recipe.dart';
import 'package:smarthealthy/presentation/search_recipe/widgets/recipe_list.widget.dart';

class DishSheetBody extends StatelessWidget {
  final void Function(RecipeModel) onAddDish;

  const DishSheetBody({super.key, required this.onAddDish});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<SearchRecipeBloc, SearchRecipeState>(
        builder: (context, state) {
          return switch (state.queryInfo.status) {
            QueryStatus.loading => const LoadingDot(),
            QueryStatus.success => RecipeList(
                onAddDish: onAddDish,
              ),
            QueryStatus.error => const CommonError()
          };
        },
        buildWhen: (previous, current) =>
            previous.queryInfo != current.queryInfo &&
            current.queryInfo.type == QueryType.initial,
      ),
    );
  }
}
