part of 'auth.bloc.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated, reLogin }

class AuthState extends Equatable {
  const AuthState._({this.status = AuthenticationStatus.unknown, this.user});

  const AuthState.unknown() : this._();

  const AuthState.authenticated(UserModel user)
      : this._(status: AuthenticationStatus.authenticated, user: user);

  const AuthState.unauthenticated()
      : this._(status: AuthenticationStatus.unauthenticated);

  const AuthState.reLogin() : this._(status: AuthenticationStatus.reLogin);

  final AuthenticationStatus status;
  final UserModel? user;

  @override
  List<Object?> get props => [status];

  AuthState copyWith({
    AuthenticationStatus? status,
    UserModel? user,
  }) {
    return AuthState._(
      status: status ?? this.status,
      user: user ?? this.user,
    );
  }
}
