import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';

class IngredientChip extends StatelessWidget {
  final String name;
  final VoidCallback? onDeleted;

  const IngredientChip({super.key, required this.name, this.onDeleted});

  @override
  Widget build(BuildContext context) {
    return Chip(
      deleteIcon: const Icon(
        Icons.close,
        color: Colors.white,
        size: 20,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      onDeleted: onDeleted,
      label: Text(
        name,
        style: TextStyles.s14RegularText.copyWith(color: Colors.white),
      ),
      backgroundColor: ColorStyles.yellowGreen,
    );
  }
}
