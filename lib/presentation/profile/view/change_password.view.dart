import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/utils/dialog.util.dart';
import 'package:smarthealthy/common/utils/toast.util.dart';
import 'package:smarthealthy/common/widgets/common_app_bar.widget.dart';
import 'package:smarthealthy/data/repositories/user.repository.dart';
import 'package:smarthealthy/di/di.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/profile/bloc/change_password/change_password.bloc.dart';
import 'package:smarthealthy/presentation/profile/widgets/change_password/change_password_body.widget.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ChangePasswordBloc(
        userRepository: getIt.get<UserRepository>(),
      ),
      child: BlocListener<ChangePasswordBloc, ChangePasswordState>(
        listener: _listenPasswordChanged,
        child: const _ChangePasswordView(),
      ),
    );
  }

  void _listenPasswordChanged(BuildContext context, ChangePasswordState state) {
    DialogUtil.hideLoading(context);

    state.mapOrNull(
      loading: (_) => DialogUtil.showLoading(context),
      success: (_) {
        ToastUtil.showSuccess(
          context,
          text: LocaleKeys.texts_change_password_success.tr(),
        );
        Navigator.of(context).pop();
      },
      error: (error) {
        if (error.type == ChangePasswordErrorStatus.unknown) {
          ToastUtil.showError(context);
        }
      },
    );
  }
}

class _ChangePasswordView extends StatelessWidget {
  const _ChangePasswordView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: LocaleKeys.profile_change_password.tr(),
      ),
      body: const ChangePasswordBody(),
    );
  }
}
