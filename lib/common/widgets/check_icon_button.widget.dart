import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:unicons/unicons.dart';

class CheckIconButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CheckIconButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: AppSize.actionSpacing),
      child: IconButton(
        onPressed: onPressed,
        icon: const Icon(
          UniconsLine.check,
          size: 32,
          color: ColorStyles.primary,
        ),
      ),
    );
  }
}
