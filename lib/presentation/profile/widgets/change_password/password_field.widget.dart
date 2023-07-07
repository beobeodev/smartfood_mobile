import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/widgets/app_text_form_field.widget.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';

class PasswordField extends StatelessWidget {
  final ValueNotifier<bool> valueNotifier;
  final TextEditingController textController;
  final String label;
  final String? Function(String?) validator;
  final String? errorText;

  const PasswordField({
    super.key,
    required this.valueNotifier,
    required this.textController,
    required this.label,
    required this.validator,
    this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: valueNotifier,
      builder: (context, value, child) {
        return AppTextFormField(
          textController: textController,
          labelText: LocaleKeys.texts_confirm_password.tr(),
          validator: validator,
          hintText: '••••••••',
          errorText: errorText,
          keyboardType: TextInputType.text,
          suffixIcon: value ? Icons.visibility : Icons.visibility_off,
          onTapSuffixIcon: () {
            valueNotifier.value = !valueNotifier.value;
          },
          suffixIconSize: 19.sp,
          suffixIconColor: ColorStyles.yellowGreen,
          isObscure: !value,
        );
      },
    );
  }
}
