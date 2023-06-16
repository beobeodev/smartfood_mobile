import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/extensions/context.extension.dart';
import 'package:smarthealthy/common/widgets/bottom_sheet/sheet_header.widget.dart';
import 'package:smarthealthy/common/widgets/bottom_sheet/sheet_search_field.widget.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/recipe_filter/widgets/bottom_sheet/ingredient_sheet_body.widget.dart';
import 'package:smarthealthy/presentation/search_ingredient/ingredient.dart';

class AddIngredientSheet extends StatefulWidget {
  const AddIngredientSheet({super.key});

  @override
  State<AddIngredientSheet> createState() => _AddIngredientSheetState();
}

class _AddIngredientSheetState extends State<AddIngredientSheet> {
  @override
  void initState() {
    context
        .read<SearchIngredientBloc>()
        .add(const SearchIngredientEvent.getAll());
    super.initState();
  }

  void _onSearchChanged(String value) {
    context
        .read<SearchIngredientBloc>()
        .add(SearchIngredientEvent.getAll(searchKey: value));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height / 1.2,
      child: Column(
        children: [
          SheetHeader(
            title: LocaleKeys.filter_add_ingredient.tr(),
          ),
          SheetSearchField(
            hintText: LocaleKeys.search_ingredient.tr(),
            onFieldSubmitted: _onSearchChanged,
          ),
          const IngredientSheetBody()
        ],
      ),
    );
  }
}
