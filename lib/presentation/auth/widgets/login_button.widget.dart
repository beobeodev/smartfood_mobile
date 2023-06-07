import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/widgets/app_rounded_button.widget.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/auth/bloc/login/login.bloc.dart';

class LoginButton extends StatelessWidget {
  final VoidCallback? action;

  const LoginButton({super.key, this.action});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return AppRoundedButton(
          onPressed: () => action?.call(),
          isLoading: state is LoginLoading,
          content: LocaleKeys.auth_sign_in.tr(),
          width: double.infinity,
          borderRadius: 100,
        );
      },
    );
  }
}
