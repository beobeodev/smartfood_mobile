import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/router/app_router.dart';
import 'package:smarthealthy/presentation/ingredient_list/ingredient_list.dart';
import 'package:unicons/unicons.dart';
import 'package:badges/badges.dart' as badges;

class IngredientListFAB extends StatelessWidget {
  const IngredientListFAB({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IngredientListBloc, IngredientListState>(
      builder: (context, state) {
        return Visibility(
          visible: state.ingredients.isNotEmpty,
          child: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                AppRouter.ingredientList,
                arguments: context.read<IngredientListBloc>(),
              );
            },
            backgroundColor: ColorStyles.primary,
            child: badges.Badge(
              position: badges.BadgePosition.topEnd(),
              badgeContent: Text(
                state.ingredients.length.toString(),
                style: const TextStyle(color: Colors.white),
              ),
              child: const Icon(
                UniconsLine.list_ul,
              ),
            ),
          ),
        );
      },
    );
  }
}
