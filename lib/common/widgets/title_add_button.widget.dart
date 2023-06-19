import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/widgets/filled_icon_button.widget.dart';

class TitleAddButton extends StatelessWidget {
  final String title;
  final TextStyle? titleStyle;
  final VoidCallback onAdd;

  const TitleAddButton({
    super.key,
    required this.title,
    this.titleStyle,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: titleStyle ?? TextStyles.s17MediumText,
        ),
        FilledIconButton(onTap: onAdd),
      ],
    );
  }
}
