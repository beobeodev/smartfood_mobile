part of 'auth.bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object?> get props => [];
}

class AuthUserInfoCheck extends AuthEvent {}

class AuthUserSet extends AuthEvent {
  const AuthUserSet(this.user);

  final UserModel user;

  @override
  List<Object?> get props => [user];
}

class AuthLogout extends AuthEvent {}
