import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/utils/dialog.util.dart';
import 'package:smarthealthy/common/utils/sheet.util.dart';
import 'package:smarthealthy/common/widgets/app_text_form_field.widget.dart';
import 'package:smarthealthy/common/widgets/title_add_button.widget.dart';
import 'package:smarthealthy/data/models/meal.model.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/diary/cubit/search_meal/search_meal_cubit.dart';
import 'package:smarthealthy/presentation/diary/widgets/add_meal/bottom_sheet/add_dish_bottom_sheet.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/add_meal/selected_dish_list.widget.dart';

class DishListSection extends StatefulWidget {
  final ValueNotifier<List<MealModel>> dishesNotifier;

  const DishListSection({super.key, required this.dishesNotifier});

  @override
  State<DishListSection> createState() => _DishListSectionState();
}

class _DishListSectionState extends State<DishListSection> {
  void _onAddDish(MealModel meal, BuildContext context) {
    final recipe = meal.recipe;

    final TextEditingController personTextController = TextEditingController();

    DialogUtil.showCustomDialog(
      context,
      title: recipe.name,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: AppTextFormField(
                  keyboardType: TextInputType.number,
                  hintText: '1',
                  isCenterText: true,
                  textController: personTextController,
                ),
              ),
              AppSize.w15,
              Text(
                'người',
                style: TextStyles.s17MediumText,
              )
            ],
          )
        ],
      ),
      confirmAction: () {
        log(personTextController.text);

        widget.dishesNotifier.value = [...widget.dishesNotifier.value, meal];
        Navigator.of(context).pop();
      },
      isConfirmDialog: true,
    );
  }

  void _showAddDishBottomSheet(BuildContext context) {
    SheetUtil.show(
      context,
      BlocProvider.value(
        value: context.read<SearchMealCubit>(),
        child: AddDishBottomSheet(
          onAddDish: (meal) => _onAddDish(meal, context),
        ),
      ),
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
          dishesNotifier: widget.dishesNotifier,
        )
      ],
    );
  }
}
