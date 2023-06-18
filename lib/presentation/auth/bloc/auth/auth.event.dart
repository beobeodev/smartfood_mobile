part of 'auth.bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object?> get props => [];
}

class AuthUserInfoCheck extends AuthEvent {}

class AuthUserInfoSet extends AuthEvent {
  const AuthUserInfoSet(this.hasLogin);

  final bool hasLogin;

  @override
  List<Object?> get props => [hasLogin];
}
