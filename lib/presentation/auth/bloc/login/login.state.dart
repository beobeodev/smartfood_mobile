part of 'login.bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState({
    this.error,
  });

  final AuthErrorType? error;

  @override
  List<Object?> get props => [error];
}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginFailure extends LoginState {
  const LoginFailure({required super.error});
}
