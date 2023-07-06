import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:smarthealthy/data/models/user.model.dart';
import 'package:smarthealthy/data/repositories/user.repository.dart';

part 'auth.event.dart';
part 'auth.state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required UserRepository userRepository})
      : _userRepository = userRepository,
        super(const AuthState.unknown()) {
    on<AuthUserSet>(_onSetUser);
    on<AuthUserInfoCheck>(_onCheckUserInfo);
    on<AuthLogout>(_onLogout);
    on<AuthUnknownSet>(_onSetUnknown);
  }

  final UserRepository _userRepository;

  Future<void> _onCheckUserInfo(
    AuthUserInfoCheck event,
    Emitter<AuthState> emit,
  ) async {
    try {
      final String? accessToken = _userRepository.getAccessToken();

      if (accessToken == null) {
        emit(const AuthState.unauthenticated());
      } else {
        final user = await _userRepository.getUserProfile();
        emit(AuthState.authenticated(user));
      }
    } catch (err) {
      _userRepository.clearAuthBox();

      emit(const AuthState.reLogin());
    }
  }

  void _onSetUser(AuthUserSet event, Emitter<AuthState> emit) {
    if (state.status == AuthenticationStatus.authenticated) {
      emit(state.copyWith(user: event.user.copyWith()));
    } else {
      emit(AuthState.authenticated(event.user.copyWith()));
    }
  }

  void _onLogout(AuthLogout event, Emitter<AuthState> emit) async {
    await _userRepository.clearAuthBox();

    emit(const AuthState.unauthenticated());
  }

  void _onSetUnknown(AuthUnknownSet event, Emitter<AuthState> emit) {
    emit(const AuthState.unknown());
  }
}
