import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/widgets/app_text_form_field.widget.dart';
import 'package:unicons/unicons.dart';

class SheetSearchField extends StatelessWidget {
  final String hintText;
  final void Function(String)? onFieldSubmitted;

  const SheetSearchField({
    super.key,
    required this.hintText,
    this.onFieldSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppSize.horizontalSpacing,
        AppSize.horizontalSpacing,
        AppSize.horizontalSpacing,
        10,
      ),
      child: AppTextFormField(
        borderRadius: 10,
        fillColor: Colors.white,
        borderColor: ColorStyles.gray200,
        prefixIcon: UniconsLine.search,
        prefixIconColor: ColorStyles.yellowGreen,
        hintText: hintText,
        onFieldSubmitted: onFieldSubmitted,
      ),
    );
  }
}
