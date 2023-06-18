import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/widgets/app_text_form_field.widget.dart';

class AuthFormField extends AppTextFormField {
  AuthFormField({
    super.key,
    super.validator,
    super.textController,
    super.labelText,
    super.keyboardType,
    super.errorText,
    super.suffixIcon,
    super.onTapSuffixIcon,
    super.suffixIconSize,
    super.isObscure,
    super.hintText,
  }) : super(
          labelStyle: TextStyles.mediumText.copyWith(fontSize: 15.sp),
        );
}
