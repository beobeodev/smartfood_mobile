import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartfood/common/utils/validator.util.dart';
import 'package:smartfood/common/widgets/app_text_form_field.widget.dart';
import 'package:smartfood/generated/locale_keys.g.dart';
import 'package:smartfood/modules/auth/bloc/login/login.bloc.dart';

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
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        children: [
          const SizedBox(height: 40),
          AppTextFormField(
            validator: ValidatorUtil.validateEmail,
            textController: widget.emailEditController,
            labelText: LocaleKeys.texts_email_address.tr(),
            keyboardType: TextInputType.emailAddress,
            hintText: 'name@email.com',
          ),
          const SizedBox(height: 15),
          BlocBuilder<LoginBloc, LoginState>(
            builder: (context, state) {
              return AppTextFormField(
                textController: widget.passwordEditController,
                labelText: LocaleKeys.texts_password.tr(),
                keyboardType: TextInputType.text,
                errorText: state.error,
                hintText: '••••••••',
                suffixIcon:
                    _isObscure ? Icons.visibility_off : Icons.visibility,
                onTapSuffixIcon: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
                isObscure: _isObscure,
                onChanged: (value) {},
              );
            },
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
