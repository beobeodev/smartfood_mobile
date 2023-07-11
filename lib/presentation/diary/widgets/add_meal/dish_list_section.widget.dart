import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
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
    final ValueNotifier<int> calorieNotifier = ValueNotifier(meal.kcal.round());

    DialogUtil.showCustomDialog(
      context,
      title: recipe.name,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppSize.h20,
          Text(
            'Số người ăn:',
            style: TextStyles.s17MediumText,
          ),
          AppSize.h10,
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: AppTextFormField(
                  keyboardType: TextInputType.number,
                  hintText: '1',
                  isCenterText: true,
                  textController: personTextController,
                  onChanged: (value) {
                    if (value.isNotEmpty) {
                      calorieNotifier.value =
                          (meal.kcal / int.parse(value)).round();
                    }
                  },
                  inputFormatters: [
                    FilteringTextInputFormatter.deny(
                      RegExp(r'^0{1}'),
                      replacementString: '1',
                    )
                  ],
                ),
              ),
              AppSize.w15,
              Text(
                'người',
                style: TextStyles.s17MediumText,
              )
            ],
          ),
          AppSize.h20,
          ValueListenableBuilder(
            valueListenable: calorieNotifier,
            builder: (context, value, child) {
              return Text(
                'Lượng kcal đã nạp vào: $value kcal',
                style: TextStyles.s17MediumText
                    .copyWith(color: ColorStyles.primary),
              );
            },
          ),
        ],
      ),
      confirmAction: () {
        widget.dishesNotifier.value = [
          ...widget.dishesNotifier.value,
          meal.copyWith(totalPeople: int.parse(personTextController.text))
        ];
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
