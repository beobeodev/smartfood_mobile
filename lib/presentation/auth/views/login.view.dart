import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/enums/auth_error_type.enum.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/utils/toast.util.dart';
import 'package:smarthealthy/common/widgets/common_back_button.widget.dart';
import 'package:smarthealthy/data/repositories/user.repository.dart';
import 'package:smarthealthy/di/di.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/auth/bloc/auth/auth.bloc.dart';
import 'package:smarthealthy/presentation/auth/bloc/login/login.bloc.dart';
import 'package:smarthealthy/presentation/auth/widgets/auth_introduction.widget.dart';
import 'package:smarthealthy/presentation/auth/widgets/auth_navigation_action.widget.dart';
import 'package:smarthealthy/presentation/auth/widgets/login_button.widget.dart';
import 'package:smarthealthy/presentation/auth/widgets/login_form.widget.dart';
import 'package:smarthealthy/presentation/auth/widgets/social_login.widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginBloc(
        authBloc: context.read<AuthBloc>(),
        userRepository: getIt.get<UserRepository>(),
      ),
      child: BlocListener<LoginBloc, LoginState>(
        listener: _listenLoginStateChanged,
        child: const _LoginView(),
      ),
    );
  }

  void _listenLoginStateChanged(BuildContext context, LoginState state) {
    if (state is LoginFailure && state.error == AuthErrorType.unknown) {
      ToastUtil.showError(
        context,
      );
    }
  }
}

class _LoginView extends StatefulWidget {
  const _LoginView();

  @override
  State<_LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<_LoginView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailEditController = TextEditingController();
  final TextEditingController _passwordEditController = TextEditingController();

  @override
  void dispose() {
    _emailEditController.dispose();
    _passwordEditController.dispose();

    super.dispose();
  }

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

  void _showReLoginError() {
    final authBloc = context.read<AuthBloc>();

    if (authBloc.state.status == AuthenticationStatus.reLogin) {
      authBloc.add(AuthUnknownSet());
      ToastUtil.showError(
        context,
        text: LocaleKeys.texts_error_re_login.tr(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) => _showReLoginError());

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  if (Navigator.of(context).canPop())
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: CommonBackButton(),
                      ),
                    ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSize.horizontalSpacing,
                      ),
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
                  )
                ],
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
