import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/enums/auth_error_type.enum.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/utils/validator.util.dart';
import 'package:smarthealthy/common/widgets/app_text_form_field.widget.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/auth/bloc/login/login.bloc.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
    required this.formKey,
    required this.emailEditController,
    required this.passwordEditController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailEditController;
  final TextEditingController passwordEditController;

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final ValueNotifier<bool> _showPasswordNotifier = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 40.h),
          AppTextFormField(
            validator: ValidatorUtil.validateEmail,
            textController: widget.emailEditController,
            labelText: LocaleKeys.texts_email_address.tr(),
            keyboardType: TextInputType.emailAddress,
            hintText: 'name@email.com',
          ),
          const SizedBox(height: 30),
          BlocBuilder<LoginBloc, LoginState>(
            builder: (context, state) {
              return ValueListenableBuilder(
                valueListenable: _showPasswordNotifier,
                builder: (context, value, child) {
                  return AppTextFormField(
                    textController: widget.passwordEditController,
                    labelText: LocaleKeys.texts_password.tr(),
                    keyboardType: TextInputType.text,
                    hintText: '••••••••',
                    errorText:
                        state.error == AuthErrorType.incorrectEmailPassword
                            ? LocaleKeys.validator_incorrect_email_password.tr()
                            : null,
                    suffixIcon: value ? Icons.visibility : Icons.visibility_off,
                    onTapSuffixIcon: () {
                      _showPasswordNotifier.value =
                          !_showPasswordNotifier.value;
                    },
                    suffixIconSize: 19.sp,
                    suffixIconColor: ColorStyles.yellowGreen,
                    isObscure: !value,
                    validator: ValidatorUtil.validateLoginPassword,
                  );
                },
              );
            },
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(splashFactory: NoSplash.splashFactory),
            child: Text(
              LocaleKeys.auth_forgot_password.tr(),
              style:
                  TextStyles.s14MediumText.copyWith(color: ColorStyles.red600),
            ),
          ),
          AppSize.h15,
        ],
      ),
    );
  }
}
