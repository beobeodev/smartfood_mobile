import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/utils/dialog.util.dart';
import 'package:smarthealthy/common/utils/toast.util.dart';
import 'package:smarthealthy/common/widgets/check_icon_button.widget.dart';
import 'package:smarthealthy/common/widgets/common_app_bar.widget.dart';
import 'package:smarthealthy/data/dtos/update_profile.dto.dart';
import 'package:smarthealthy/data/models/user.model.dart';
import 'package:smarthealthy/data/repositories/user.repository.dart';
import 'package:smarthealthy/di/di.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/auth/bloc/auth/auth.bloc.dart';
import 'package:smarthealthy/presentation/profile/bloc/update_profile/update_profile.bloc.dart';
import 'package:smarthealthy/presentation/profile/widgets/update_profile/update_profile_body.widget.dart';

class UpdateProfilePage extends StatelessWidget {
  const UpdateProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UpdateProfileBloc(
        userRepository: getIt.get<UserRepository>(),
      ),
      child: BlocListener<UpdateProfileBloc, UpdateProfileState>(
        listener: _listenUpdateProfileChanged,
        child: const _UpdateProfileView(),
      ),
    );
  }

  void _listenUpdateProfileChanged(
    BuildContext context,
    UpdateProfileState state,
  ) {
    DialogUtil.hideLoading(context);
    state.mapOrNull(
      loading: (_) => DialogUtil.showLoading(context),
      success: (success) {
        ToastUtil.showSuccess(
          context,
          text: LocaleKeys.texts_update_profile_success.tr(),
        );
        context.read<AuthBloc>().add(AuthUserSet(success.user));
      },
      error: (_) => ToastUtil.showError(context),
    );
  }
}

class _UpdateProfileView extends StatefulWidget {
  const _UpdateProfileView();

  @override
  State<_UpdateProfileView> createState() => _UpdateProfileViewState();
}

class _UpdateProfileViewState extends State<_UpdateProfileView> {
  late final ValueNotifier<UserModel> _oldUserNotifier;
  late final ValueNotifier<UserModel> _userNotifier;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    final oldUser = context.read<AuthBloc>().state.user!;

    _oldUserNotifier = ValueNotifier(oldUser);
    _userNotifier = ValueNotifier(oldUser.copyWith());

    super.initState();
  }

  void _submit() {
    FocusManager.instance.primaryFocus?.unfocus();

    if (_formKey.currentState!.validate()) {
      final user = _userNotifier.value;

      context.read<UpdateProfileBloc>().add(
            UpdateProfileEvent.submit(
              UpdateProfileDTO(
                firstName: user.firstName,
                lastName: user.lastName,
              ),
            ),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        _oldUserNotifier.value = state.user!.copyWith();
      },
      listenWhen: (previous, current) => previous.user != current.user,
      child: Scaffold(
        appBar: CommonAppBar(
          title: LocaleKeys.profile_personal_data.tr(),
          actions: [
            ValueListenableBuilder(
              valueListenable: _userNotifier,
              builder: (context, value1, child) {
                return ValueListenableBuilder(
                  valueListenable: _oldUserNotifier,
                  builder: (context, value2, child) {
                    return Visibility(
                      visible: value1 != value2,
                      child: child!,
                    );
                  },
                  child: CheckIconButton(onPressed: _submit),
                );
              },
            )
          ],
        ),
        body: UpdateProfileBody(
          userNotifier: _userNotifier,
          formKey: _formKey,
        ),
      ),
    );
  }
}
