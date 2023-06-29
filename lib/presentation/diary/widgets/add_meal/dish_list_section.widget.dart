import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/widgets/title_add_button.widget.dart';
import 'package:smarthealthy/data/models/recipe.model.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/diary/widgets/add_meal/bottom_sheet/add_dish_bottom_sheet.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/add_meal/selected_dish_list.widget.dart';
import 'package:smarthealthy/presentation/search_recipe/search_recipe.dart';

class DishListSection extends StatelessWidget {
  final ValueNotifier<List<RecipeModel>> dishesNotifier;

  const DishListSection({super.key, required this.dishesNotifier});

  void _onAddDish(RecipeModel recipe, BuildContext context) {
    dishesNotifier.value = [...dishesNotifier.value, recipe];
    Navigator.of(context).pop();
  }

  void _showAddDishBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return BlocProvider.value(
          value: context.read<SearchRecipeBloc>(),
          child: AddDishBottomSheet(
            onAddDish: (recipe) => _onAddDish(recipe, context),
          ),
        );
      },
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      backgroundColor: Colors.white,
      isScrollControlled: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleAddButton(
          title: LocaleKeys.meal_list.tr(),
          onAdd: () => _showAddDishBottomSheet(context),
        ),
        SelectedDishList(
          dishesNotifier: dishesNotifier,
        )
      ],
    );
  }
}
