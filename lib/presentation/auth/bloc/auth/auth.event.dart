part of 'auth.bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object?> get props => [];
}

class AuthUserInfoCheck extends AuthEvent {}

class AuthUserSet extends AuthEvent {
  const AuthUserSet(this.hasLogin);

  final bool hasLogin;

  @override
  List<Object?> get props => [hasLogin];
}

class AuthLogout extends AuthEvent {}
