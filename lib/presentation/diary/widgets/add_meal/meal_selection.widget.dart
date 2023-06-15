import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/diary/ui_models/meal_type.model.dart';
import 'package:smarthealthy/presentation/diary/widgets/add_meal/meal_choice_chip.widget.dart';

class MealSelection extends StatelessWidget {
  const MealSelection({
    super.key,
    required ValueNotifier<List<MealTypeUIModel>> mealTypeNotifier,
  }) : _mealTypeNotifier = mealTypeNotifier;

  final ValueNotifier<List<MealTypeUIModel>> _mealTypeNotifier;

  void _onSelected(bool value, MealTypeUIModel model, int index) {
    if (model.isSelected) return;

    _mealTypeNotifier.value = _mealTypeNotifier.value
        .map((e) => e.copyWith(isSelected: false))
        .toList();
    _mealTypeNotifier.value[index] = model.copyWith(
      isSelected: value,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          LocaleKeys.meal_title.tr(),
          style: TextStyles.s17MediumText,
        ),
        SizedBox(
          height: AppSize.choiceChipHeight,
          child: ValueListenableBuilder(
            valueListenable: _mealTypeNotifier,
            builder: (context, value, child) {
              return ListView.separated(
                itemCount: value.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) => AppSize.w10,
                itemBuilder: (context, index) {
                  final model = value[index];

                  return MealChoiceChip(
                    model: model,
                    onSelected: (value) => _onSelected(value, model, index),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
