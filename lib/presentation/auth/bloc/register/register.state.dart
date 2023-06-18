part of 'register.bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = _Initial;
  const factory RegisterState.success() = _Success;
  const factory RegisterState.loading() = _Loading;
  const factory RegisterState.failure({AuthErrorType? errorType}) = _Failure;
}
