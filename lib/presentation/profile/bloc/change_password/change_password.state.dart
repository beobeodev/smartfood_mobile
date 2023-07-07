part of 'change_password.bloc.dart';

enum ChangePasswordErrorStatus { currentPasswordNotCorrect, unknown }

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState.initial() = _Initial;
  const factory ChangePasswordState.loading() = _Loading;
  const factory ChangePasswordState.success() = _Success;
  const factory ChangePasswordState.error(ChangePasswordErrorStatus type) =
      _Error;
}
