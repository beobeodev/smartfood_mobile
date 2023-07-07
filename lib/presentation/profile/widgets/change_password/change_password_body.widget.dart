import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/utils/validator.util.dart';
import 'package:smarthealthy/common/widgets/app_rounded_button.widget.dart';
import 'package:smarthealthy/data/dtos/change_password.dto.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/profile/bloc/change_password/change_password.bloc.dart';
import 'package:smarthealthy/presentation/profile/widgets/change_password/password_field.widget.dart';

class ChangePasswordBody extends StatefulWidget {
  const ChangePasswordBody({
    super.key,
  });

  @override
  State<ChangePasswordBody> createState() => _ChangePasswordBodyState();
}

class _ChangePasswordBodyState extends State<ChangePasswordBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _currentPasswordController =
      TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  final ValueNotifier<bool> _currentNotifier = ValueNotifier(false);
  final ValueNotifier<bool> _newNotifier = ValueNotifier(false);
  final ValueNotifier<bool> _confirmNotifier = ValueNotifier(false);

  @override
  void dispose() {
    _currentPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();

    super.dispose();
  }

  void _submit() {
    FocusManager.instance.primaryFocus?.unfocus();

    if (_formKey.currentState!.validate()) {
      context.read<ChangePasswordBloc>().add(
            ChangePasswordEvent.submit(
              ChangePasswordDTO(
                newPassword: _newPasswordController.text,
                currentPassword: _currentPasswordController.text,
                confirmPassword: _confirmPasswordController.text,
              ),
            ),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSize.horizontalSpacing),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            BlocBuilder<ChangePasswordBloc, ChangePasswordState>(
              builder: (context, state) {
                return PasswordField(
                  valueNotifier: _currentNotifier,
                  textController: _currentPasswordController,
                  label: LocaleKeys.profile_current_password.tr(),
                  validator: ValidatorUtil.validateCurrentPassword,
                  errorText: state.mapOrNull(
                    error: (error) => error.type ==
                            ChangePasswordErrorStatus.currentPasswordNotCorrect
                        ? LocaleKeys.profile_current_password_not_correct.tr()
                        : null,
                  ),
                );
              },
            ),
            AppSize.h20,
            PasswordField(
              valueNotifier: _newNotifier,
              textController: _newPasswordController,
              label: LocaleKeys.profile_new_password.tr(),
              validator: ValidatorUtil.validatePassword,
            ),
            AppSize.h20,
            PasswordField(
              valueNotifier: _confirmNotifier,
              textController: _confirmPasswordController,
              label: LocaleKeys.texts_confirm_password.tr(),
              validator: (value) => ValidatorUtil.validateConfirmPassword(
                value,
                _newPasswordController.text,
              ),
            ),
            AppSize.h20,
            AppRoundedButton(
              onPressed: _submit,
              content: LocaleKeys.profile_change_password.tr(),
            )
          ],
        ),
      ),
    );
  }
}
