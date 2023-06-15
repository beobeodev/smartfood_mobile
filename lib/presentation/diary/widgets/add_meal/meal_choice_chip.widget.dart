import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/presentation/diary/ui_models/meal_type.model.dart';

class MealChoiceChip extends StatelessWidget {
  final MealTypeUIModel model;
  final void Function(bool) onSelected;

  const MealChoiceChip({
    super.key,
    required this.model,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(
        model.name,
        style: TextStyles.s14MediumText.copyWith(
          color: model.isSelected ? Colors.white : ColorStyles.zodiacBlue,
        ),
      ),
      elevation: 0,
      pressElevation: 0,
      backgroundColor: ColorStyles.gray100,
      disabledColor: Colors.white,
      selectedColor: ColorStyles.yellowGreen,
      shadowColor: Colors.white,
      selectedShadowColor: Colors.white,
      surfaceTintColor: Colors.white,
      selected: model.isSelected,
      onSelected: onSelected,
    );
  }
}
