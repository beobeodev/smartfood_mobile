import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';

class RecipeDescription extends StatelessWidget {
  final String description;

  const RecipeDescription({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description',
          style: TextStyles.s17BoldText,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          description,
          style: TextStyles.s14RegularText,
        ),
      ],
    );
  }
}
