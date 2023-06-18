part of 'register.bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.submit(RegisterRequestDTO registerDto) = _Submit;
}
