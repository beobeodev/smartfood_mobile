import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:smarthealthy/common/constants/enums/auth_error_type.enum.dart';
import 'package:smarthealthy/data/dtos/auth/login_by_email_request.dto.dart';
import 'package:smarthealthy/data/repositories/user.repository.dart';
import 'package:smarthealthy/presentation/auth/bloc/auth/auth.bloc.dart';

part 'login.event.dart';
part 'login.state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({
    required UserRepository userRepository,
    required AuthBloc authBloc,
  })  : _authBloc = authBloc,
        _userRepository = userRepository,
        super(LoginInitial()) {
    on<LoginSubmit>(_onLoginSubmit);
  }

  final AuthBloc _authBloc;
  final UserRepository _userRepository;

  Future<void> _onLoginSubmit(
    LoginSubmit event,
    Emitter<LoginState> emit,
  ) async {
    emit(LoginLoading());

    try {
      await _userRepository.loginByEmail(
        LoginByEmailRequestDTO(
          email: event.email,
          password: event.password,
        ),
      );

      _authBloc.add(const AuthUserInfoSet(true));
    } catch (err) {
      bool isUnauthorizedError =
          err is DioError && err.response?.statusCode == 401;

      if (isUnauthorizedError) {
        emit(
          const LoginNotSuccess(
            error: AuthErrorType.incorrectEmailPassword,
          ),
        );
      } else {
        emit(const LoginNotSuccess(error: AuthErrorType.unknown));
      }
    }
  }
}
