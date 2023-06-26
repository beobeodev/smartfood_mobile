import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/enums/auth_error_type.enum.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/utils/validator.util.dart';
import 'package:smarthealthy/common/widgets/app_text_form_field.widget.dart';
import 'package:smarthealthy/data/dtos/auth/register_request.dto.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/auth/bloc/register/register.bloc.dart';
import 'package:smarthealthy/presentation/auth/widgets/register_button.widget.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final firstNameTextController = TextEditingController();
  final lastNameTextController = TextEditingController();
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  final ValueNotifier<bool> _showPasswordNotifier = ValueNotifier<bool>(false);
  final ValueNotifier<bool> _showConfirmPasswordNotifier =
      ValueNotifier<bool>(false);

  @override
  void dispose() {
    firstNameTextController.dispose();
    lastNameTextController.dispose();
    emailTextController.dispose();
    passwordTextController.dispose();

    _showPasswordNotifier.dispose();
    _showConfirmPasswordNotifier.dispose();
    super.dispose();
  }

  void _register() {
    if (_formKey.currentState!.validate()) {
      context.read<RegisterBloc>().add(
            RegisterEvent.submit(
              RegisterRequestDTO(
                firstName: firstNameTextController.text,
                lastName: lastNameTextController.text,
                email: emailTextController.text,
                password: passwordTextController.text,
              ),
            ),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          AppTextFormField(
            textController: firstNameTextController,
            validator: ValidatorUtil.validateFirstName,
            labelText: LocaleKeys.texts_first_name.tr(),
            keyboardType: TextInputType.emailAddress,
            hintText: LocaleKeys.texts_enter_first_name.tr(),
          ),
          AppSize.h20,
          AppTextFormField(
            textController: lastNameTextController,
            validator: ValidatorUtil.validateLastName,
            labelText: LocaleKeys.texts_last_name.tr(),
            keyboardType: TextInputType.emailAddress,
            hintText: LocaleKeys.texts_enter_last_name.tr(),
          ),
          AppSize.h20,
          BlocBuilder<RegisterBloc, RegisterState>(
            builder: (context, state) {
              return AppTextFormField(
                textController: emailTextController,
                validator: ValidatorUtil.validateEmail,
                labelText: LocaleKeys.texts_email_address.tr(),
                keyboardType: TextInputType.emailAddress,
                errorText: state ==
                        const RegisterState.failure(
                          errorType: AuthErrorType.existEmail,
                        )
                    ? LocaleKeys.validator_email_existed.tr()
                    : null,
                hintText: 'name@email.com',
              );
            },
          ),
          AppSize.h20,
          ValueListenableBuilder(
            valueListenable: _showPasswordNotifier,
            builder: (context, value, child) {
              return AppTextFormField(
                textController: passwordTextController,
                validator: ValidatorUtil.validatePassword,
                labelText: LocaleKeys.texts_password.tr(),
                keyboardType: TextInputType.emailAddress,
                hintText: '••••••••',
                suffixIcon: value ? Icons.visibility : Icons.visibility_off,
                onTapSuffixIcon: () {
                  _showPasswordNotifier.value = !_showPasswordNotifier.value;
                },
                suffixIconSize: 19.sp,
                suffixIconColor: ColorStyles.yellowGreen,
                isObscure: !value,
              );
            },
          ),
          AppSize.h20,
          ValueListenableBuilder(
            valueListenable: _showConfirmPasswordNotifier,
            builder: (context, value, child) {
              return AppTextFormField(
                validator: (value) => ValidatorUtil.validateConfirmPassword(
                  value,
                  passwordTextController.text,
                ),
                labelText: LocaleKeys.texts_confirm_password.tr(),
                keyboardType: TextInputType.emailAddress,
                hintText: '••••••••',
                suffixIcon: value ? Icons.visibility : Icons.visibility_off,
                onTapSuffixIcon: () {
                  _showConfirmPasswordNotifier.value =
                      !_showConfirmPasswordNotifier.value;
                },
                suffixIconSize: 19.sp,
                suffixIconColor: ColorStyles.yellowGreen,
                isObscure: !value,
              );
            },
          ),
          SizedBox(
            height: 30.h,
          ),
          RegisterButton(
            action: _register,
          ),
        ],
      ),
    );
  }
}
