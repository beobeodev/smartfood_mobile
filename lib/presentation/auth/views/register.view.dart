import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smarthealthy/common/constants/enums/auth_error_type.enum.dart';
import 'package:smarthealthy/common/extensions/context.extension.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/utils/toast.util.dart';
import 'package:smarthealthy/data/repositories/user.repository.dart';
import 'package:smarthealthy/di/di.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/auth/bloc/register/register.bloc.dart';
import 'package:smarthealthy/presentation/auth/widgets/auth_introduction.widget.dart';
import 'package:smarthealthy/presentation/auth/widgets/auth_navigation_action.widget.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/presentation/auth/widgets/register_form.widget.dart';
import 'package:smarthealthy/router/app_router.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => RegisterBloc(
        userRepository: getIt.get<UserRepository>(),
      ),
      child: BlocListener<RegisterBloc, RegisterState>(
        listener: _listenStateChanged,
        child: const _RegisterView(),
      ),
    );
  }

  void _listenStateChanged(BuildContext context, RegisterState state) {
    state.mapOrNull(
      success: (successState) {
        ToastUtil.showSuccess(
          context,
          text: LocaleKeys.texts_register_success.tr(),
        );
        Navigator.of(context)
            .pushNamedAndRemoveUntil(AppRouter.login, (route) => false);
      },
      failure: (failState) {
        if (failState.errorType == AuthErrorType.unknown) {
          ToastUtil.showError(
            context,
          );
        }
      },
    );
  }
}

class _RegisterView extends StatelessWidget {
  const _RegisterView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              padding: EdgeInsets.fromLTRB(
                AppSize.horizontalSpace,
                context.paddingTop,
                AppSize.horizontalSpace,
                0,
              ),
              child: const Column(
                children: [
                  AuthIntroduction(
                    isLogin: false,
                  ),
                  AppSize.h20,
                  RegisterForm(),
                  Spacer(),
                  AuthNavigationAction(
                    isLogin: false,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
