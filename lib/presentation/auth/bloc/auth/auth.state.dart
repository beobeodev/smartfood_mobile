part of 'auth.bloc.dart';

enum AuthenticationStatus {
  unknown,
  authenticated,
  unauthenticated,
}

class AuthState extends Equatable {
  const AuthState._({
    this.status = AuthenticationStatus.unknown,
  });

  const AuthState.unknown() : this._();

  const AuthState.authenticated()
      : this._(status: AuthenticationStatus.authenticated);

  const AuthState.unauthenticated()
      : this._(status: AuthenticationStatus.unauthenticated);

  final AuthenticationStatus status;

  @override
  List<Object?> get props => [status];
}
