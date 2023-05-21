import 'package:flutter/material.dart';
import 'package:smartfood/common/theme/color_styles.dart';
import 'package:smartfood/common/widgets/app_text_form_field.widget.dart';

class CommonSearchField extends StatelessWidget {
  final void Function(String)? onFieldSubmitted;
  final void Function()? onTap;
  final String? hintText;
  final bool readOnly;

  const CommonSearchField({
    super.key,
    this.onFieldSubmitted,
    this.onTap,
    this.hintText,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: hintText,
      prefixIcon: Icons.search,
      extendField: false,
      borderRadius: 1000,
      borderColor: Colors.transparent,
      prefixIconColor: ColorStyles.primary,
      fillColor: ColorStyles.antiFlashWhite,
      focusedBorderColor: Colors.transparent,
      onTap: onTap,
      onFieldSubmitted: onFieldSubmitted,
      readOnly: readOnly,
    );
  }
}
