import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:smarthealthy/data/repositories/user.repository.dart';

part 'auth.event.dart';
part 'auth.state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required UserRepository userRepository})
      : _userRepository = userRepository,
        super(const AuthState.unknown()) {
    on<AuthUserInfoSet>(_onSetUserInfo);
    on<AuthUserInfoCheck>(_onCheckUserInfo);
  }
  final UserRepository _userRepository;

  void _onCheckUserInfo(
    AuthUserInfoCheck event,
    Emitter<AuthState> emit,
  ) {
    try {
      final bool hasLogin = _userRepository.checkHasLogin();

      _changeAuthState(hasLogin, emit);
    } catch (err) {
      emit(const AuthState.unauthenticated());
    }
  }

  void _onSetUserInfo(AuthUserInfoSet event, Emitter<AuthState> emit) {
    if (!event.hasLogin) {
      _userRepository.clearAuthBox();
    }

    _changeAuthState(event.hasLogin, emit);
  }

  void _changeAuthState(bool hasLogin, Emitter<AuthState> emit) {
    emit(
      hasLogin
          ? const AuthState.authenticated()
          : const AuthState.unauthenticated(),
    );
  }
}
