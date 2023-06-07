import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/extensions/context.extension.dart';
import 'package:smarthealthy/common/extensions/string.extension.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/utils/toast.util.dart';
import 'package:smarthealthy/data/repositories/user.repository.dart';
import 'package:smarthealthy/di/di.dart';
import 'package:smarthealthy/presentation/auth/bloc/auth/auth.bloc.dart';
import 'package:smarthealthy/presentation/auth/bloc/login/login.bloc.dart';
import 'package:smarthealthy/presentation/auth/widgets/auth_introduction.widget.dart';
import 'package:smarthealthy/presentation/auth/widgets/auth_navigation_action.widget.dart';
import 'package:smarthealthy/presentation/auth/widgets/login_button.widget.dart';
import 'package:smarthealthy/presentation/auth/widgets/login_form.widget.dart';
import 'package:smarthealthy/presentation/auth/widgets/social_login.widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void _listenLoginStateChanged(BuildContext context, LoginState state) {
    if (state is LoginNotSuccess && state.error.isNullOrEmpty) {
      ToastUtil.showError(
        context,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginBloc(
        authBloc: context.read<AuthBloc>(),
        userRepository: getIt.get<UserRepository>(),
      ),
      child: BlocListener<LoginBloc, LoginState>(
        listener: _listenLoginStateChanged,
        child: _LoginView(),
      ),
    );
  }
}

class _LoginView extends StatelessWidget {
  _LoginView();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailEditController = TextEditingController();
  final TextEditingController _passwordEditController = TextEditingController();

  void _submitLogin(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      context.read<LoginBloc>().add(
            LoginSubmit(
              email: _emailEditController.text,
              password: _passwordEditController.text,
            ),
          );
    }
  }

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
          child: Column(
            children: [
              const Spacer(),
              const AuthIntroduction(),
              LoginForm(
                formKey: _formKey,
                emailEditController: _emailEditController,
                passwordEditController: _passwordEditController,
              ),
              LoginButton(
                action: () => _submitLogin(context),
              ),
              const SocialLogin(),
              const Spacer(),
              const AuthNavigationAction()
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
