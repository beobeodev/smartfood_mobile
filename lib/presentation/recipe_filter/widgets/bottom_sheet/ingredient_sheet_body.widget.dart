import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/enums/query_status.enum.dart';
import 'package:smarthealthy/common/enums/query_type.enum.dart';
import 'package:smarthealthy/common/widgets/common_error.widget.dart';
import 'package:smarthealthy/presentation/recipe_filter/widgets/bottom_sheet/searched_ingredient_list.widget.dart';
import 'package:smarthealthy/presentation/recipe_filter/widgets/bottom_sheet/shimmer_ingredient_list.widget.dart';
import 'package:smarthealthy/presentation/search_ingredient/search_ingredient.dart';

class IngredientSheetBody extends StatelessWidget {
  const IngredientSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchIngredientBloc, SearchIngredientState>(
      builder: (context, state) {
        return switch (state.queryInfo.status) {
          QueryStatus.loading => const ShimmerIngredientList(),
          QueryStatus.success => const SearchedIngredientList(),
          QueryStatus.error => const CommonError(),
        };
      },
      buildWhen: (previous, current) =>
          previous.queryInfo != current.queryInfo &&
          current.queryInfo.type == QueryType.initial,
    );
  }
}
