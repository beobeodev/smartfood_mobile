import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/data/models/recipe.model.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/diary/widgets/filled_icon_button.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/add_meal/bottom_sheet/add_dish_bottom_sheet.widget.dart';
import 'package:smarthealthy/presentation/search_recipe/search_recipe.dart';

class DishSectionTitle extends StatelessWidget {
  final ValueNotifier<List<RecipeModel>> dishesNotifier;

  const DishSectionTitle({
    super.key,
    required this.dishesNotifier,
  });

  void _onAddDish(BuildContext context, RecipeModel recipe) {
    Navigator.of(context).pop();
    dishesNotifier.value = [...dishesNotifier.value, recipe];
  }

  void _showAddDishBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return BlocProvider.value(
          value: context.read<SearchRecipeBloc>(),
          child: AddDishBottomSheet(
            onAddDish: (recipe) => _onAddDish(context, recipe),
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          LocaleKeys.meal_list.tr(),
          style: TextStyles.s17MediumText,
        ),
        FilledIconButton(onTap: () => _showAddDishBottomSheet(context)),
      ],
    );
  }
}
