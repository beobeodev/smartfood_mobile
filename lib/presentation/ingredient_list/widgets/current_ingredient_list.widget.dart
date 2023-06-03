import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/presentation/ingredient_list/ingredient_list.dart';
import 'package:smarthealthy/presentation/ingredient_list/widgets/current_ingredient_item.widget.dart';

class CurrentIngredientList extends StatelessWidget {
  const CurrentIngredientList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IngredientListBloc, IngredientListState>(
      builder: (context, state) {
        return ListView.separated(
          itemCount: state.ingredients.length,
          padding: const EdgeInsets.fromLTRB(
            AppSize.horizontalSpace,
            AppSize.horizontalSpace,
            AppSize.horizontalSpace,
            100,
          ),
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 10,
            );
          },
          itemBuilder: (context, index) {
            final ingredient = state.ingredients[index];

            return CurrentIngredientItem(ingredient: ingredient);
          },
        );
      },
    );
  }
}
