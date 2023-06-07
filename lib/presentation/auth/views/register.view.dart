import 'package:flutter/material.dart';
import 'package:smarthealthy/common/extensions/context.extension.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/presentation/auth/bloc/register/register.bloc.dart';
import 'package:smarthealthy/presentation/auth/widgets/auth_introduction.widget.dart';
import 'package:smarthealthy/presentation/auth/widgets/auth_navigation_action.widget.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/presentation/auth/widgets/register_button.widget.dart';
import 'package:smarthealthy/presentation/auth/widgets/register_form.widget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => RegisterBloc(),
      child: const _RegisterView(),
    );
  }
}

class _RegisterView extends StatelessWidget {
  const _RegisterView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(
          AppSize.horizontalSpace,
          context.paddingTop,
          AppSize.horizontalSpace,
          0,
        ),
        child: SizedBox(
          height: context.height - context.paddingTop,
          child: const Column(
            children: [
              Spacer(),
              AuthIntroduction(
                isLogin: false,
              ),
              RegisterForm(),
              RegisterButton(),
              Spacer(),
              AuthNavigationAction(
                isLogin: false,
              )
            ],
          ),
        ),
      ),
    );
  }
}
