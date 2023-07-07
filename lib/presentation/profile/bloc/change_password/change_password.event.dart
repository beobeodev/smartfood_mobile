part of 'change_password.bloc.dart';

@freezed
class ChangePasswordEvent with _$ChangePasswordEvent {
  const factory ChangePasswordEvent.submit(ChangePasswordDTO dto) = _Submit;
}
