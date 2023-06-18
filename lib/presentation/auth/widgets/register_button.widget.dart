import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/widgets/app_rounded_button.widget.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/auth/bloc/register/register.bloc.dart';

class RegisterButton extends StatelessWidget {
  final VoidCallback? action;

  const RegisterButton({super.key, this.action});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      builder: (context, state) {
        return AppRoundedButton(
          onPressed: () => action?.call(),
          content: LocaleKeys.auth_sign_up.tr(),
          width: double.infinity,
          borderRadius: 100,
          isLoading: state == const RegisterState.loading(),
        );
      },
    );
  }
}
