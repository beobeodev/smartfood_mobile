import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/widgets/bottom_sheet/sheet_container.widget.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/recipe_filter/widgets/bottom_sheet/ingredient_sheet_body.widget.dart';
import 'package:smarthealthy/presentation/search_ingredient/search_ingredient.dart';

class AddIngredientSheet extends StatelessWidget {
  const AddIngredientSheet({super.key});

  void _onSearchChanged(BuildContext context, String value) {
    context
        .read<SearchIngredientBloc>()
        .add(SearchIngredientEvent.getAll(searchKey: value));
  }

  @override
  Widget build(BuildContext context) {
    return SheetSearchContainer(
      title: LocaleKeys.filter_add_ingredient.tr(),
      hintText: LocaleKeys.search_ingredient.tr(),
      onFieldSubmitted: (value) => _onSearchChanged(context, value),
      child: const IngredientSheetBody(),
    );
  }
}
