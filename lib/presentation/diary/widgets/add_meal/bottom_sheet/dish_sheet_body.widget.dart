import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/enums/query_status.enum.dart';
import 'package:smarthealthy/common/enums/query_type.enum.dart';
import 'package:smarthealthy/common/widgets/common_error.widget.dart';
import 'package:smarthealthy/common/widgets/loading_dot.widget.dart';
import 'package:smarthealthy/data/models/meal.model.dart';
import 'package:smarthealthy/presentation/diary/cubit/search_meal/search_meal_cubit.dart';
import 'package:smarthealthy/presentation/diary/widgets/add_meal/dish_list.widget.dart';

class DishSheetBody extends StatelessWidget {
  final void Function(MealModel) onAddDish;

  const DishSheetBody({super.key, required this.onAddDish});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchMealCubit, SearchMealState>(
      builder: (context, state) {
        return switch (state.info.status) {
          QueryStatus.loading => const LoadingDot(),
          QueryStatus.success => DishList(
              onAddDish: onAddDish,
            ),
          QueryStatus.error => const CommonError()
        };
      },
      buildWhen: (previous, current) =>
          previous.info != current.info &&
          current.info.type == QueryType.initial,
    );
  }
}
