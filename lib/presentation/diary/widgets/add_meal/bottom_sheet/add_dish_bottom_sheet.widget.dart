import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/extensions/context.extension.dart';
import 'package:smarthealthy/data/models/recipe.model.dart';
import 'package:smarthealthy/presentation/diary/widgets/add_meal/bottom_sheet/dish_search_field.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/add_meal/bottom_sheet/sheet_body.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/add_meal/bottom_sheet/sheet_header.widget.dart';
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

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height / 1.2,
      child: Column(
        children: [
          const SheetHeader(),
          const DishSearchField(),
          SheetBody(onAddDish: widget.onAddDish)
        ],
      ),
    );
  }
}
