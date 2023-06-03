import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';

class RecipeFilterChip extends StatelessWidget {
  final String name;
  final bool isSelected;
  final void Function(bool)? onSelected;

  const RecipeFilterChip({
    super.key,
    required this.name,
    this.isSelected = false,
    this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(name),
      labelStyle: TextStyles.s14RegularText
          .copyWith(color: isSelected ? Colors.white : ColorStyles.zodiacBlue),
      selectedColor: ColorStyles.yellowGreen,
      backgroundColor: ColorStyles.gray100,
      showCheckmark: false,
      elevation: 0,
      pressElevation: 0,
      onSelected: onSelected,
      selected: isSelected,
    );
  }
}
