import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/widgets/bottom_sheet/sheet_container.widget.dart';
import 'package:smarthealthy/data/models/meal.model.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/diary/cubit/search_meal/search_meal_cubit.dart';
import 'package:smarthealthy/presentation/diary/widgets/add_meal/bottom_sheet/dish_sheet_body.widget.dart';

class AddDishBottomSheet extends StatelessWidget {
  final void Function(MealModel) onAddDish;

  const AddDishBottomSheet({super.key, required this.onAddDish});

  void _onSearchChanged(BuildContext context, String value) {
    context.read<SearchMealCubit>().getAll(searchKey: value);
  }

  @override
  Widget build(BuildContext context) {
    return SheetSearchContainer(
      title: LocaleKeys.meal_add_dish.tr(),
      hintText: LocaleKeys.meal_enter_dish.tr(),
      onFieldSubmitted: (value) => _onSearchChanged(context, value),
      child: DishSheetBody(onAddDish: onAddDish),
    );
  }
}
