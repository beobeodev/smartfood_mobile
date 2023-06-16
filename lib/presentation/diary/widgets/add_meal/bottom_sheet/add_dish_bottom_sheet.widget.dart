import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/extensions/context.extension.dart';
import 'package:smarthealthy/data/models/recipe.model.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/common/widgets/bottom_sheet/sheet_search_field.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/add_meal/bottom_sheet/dish_sheet_body.widget.dart';
import 'package:smarthealthy/common/widgets/bottom_sheet/sheet_header.widget.dart';
import 'package:smarthealthy/presentation/search_recipe/search_recipe.dart';

class AddDishBottomSheet extends StatefulWidget {
  final void Function(RecipeModel) onAddDish;

  const AddDishBottomSheet({super.key, required this.onAddDish});

  @override
  State<AddDishBottomSheet> createState() => _AddDishBottomSheetState();
}

class _AddDishBottomSheetState extends State<AddDishBottomSheet> {
  @override
  void initState() {
    context.read<SearchRecipeBloc>().add(const SearchRecipeEvent.getAll());
    super.initState();
  }

  void _onSearchChanged(BuildContext context, String value) {
    context
        .read<SearchRecipeBloc>()
        .add(SearchRecipeEvent.getAll(searchKey: value));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height / 1.2,
      child: Column(
        children: [
          SheetHeader(
            title: LocaleKeys.meal_add_dish.tr(),
          ),
          SheetSearchField(
            hintText: LocaleKeys.meal_enter_dish.tr(),
            onFieldSubmitted: (value) => _onSearchChanged(context, value),
          ),
          DishSheetBody(onAddDish: widget.onAddDish)
        ],
      ),
    );
  }
}
