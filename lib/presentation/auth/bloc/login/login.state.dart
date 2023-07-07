part of 'login.bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState({this.error, this.stack});

  final AuthErrorType? error;
  final String? stack;

  @override
  List<Object?> get props => [error, stack];
}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginFailure extends LoginState {
  const LoginFailure({required super.error, super.stack});
}
