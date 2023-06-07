import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/utils/validator.util.dart';
import 'package:smarthealthy/common/widgets/app_text_form_field.widget.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/auth/widgets/auth_form_field.widget.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 40.h, bottom: 40.h),
      child: Form(
        child: Column(
          children: [
            AppTextFormField(
              validator: ValidatorUtil.validateEmail,
              labelText: LocaleKeys.texts_email_address.tr(),
              keyboardType: TextInputType.emailAddress,
              hintText: 'name@email.com',
            ),
            AppSize.h20,
            AuthFormField(
              validator: ValidatorUtil.validateEmail,
              labelText: LocaleKeys.texts_email_address.tr(),
              keyboardType: TextInputType.emailAddress,
              hintText: 'name@email.com',
            ),
            AppSize.h20,
            AuthFormField(
              validator: ValidatorUtil.validateEmail,
              labelText: LocaleKeys.texts_email_address.tr(),
              keyboardType: TextInputType.emailAddress,
              hintText: 'name@email.com',
            ),
            AppSize.h20,
            AuthFormField(
              validator: ValidatorUtil.validateEmail,
              labelText: LocaleKeys.texts_email_address.tr(),
              keyboardType: TextInputType.emailAddress,
              hintText: 'name@email.com',
            )
          ],
        ),
      ),
    );
  }
}
