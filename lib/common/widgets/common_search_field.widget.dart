import 'package:flutter/material.dart';
import 'package:smarthealthy/common/widgets/app_text_form_field.widget.dart';

class CommonSearchField extends StatelessWidget {
  final void Function(String)? onFieldSubmitted;
  final void Function()? onTap;
  final String? hintText;
  final bool readOnly;
  final bool autoFocus;

  const CommonSearchField({
    super.key,
    this.onFieldSubmitted,
    this.onTap,
    this.hintText,
    this.readOnly = false,
    this.autoFocus = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: hintText,
      prefixIcon: Icons.search,
      focusedBorderColor: Colors.transparent,
      onTap: onTap,
      onFieldSubmitted: onFieldSubmitted,
      readOnly: readOnly,
      autoFocus: autoFocus,
      height: 45,
      isDense: true,
    );
  }
}
