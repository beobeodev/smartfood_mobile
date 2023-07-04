import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:smarthealthy/common/enums/auth_error_type.enum.dart';
import 'package:smarthealthy/common/helpers/jwt_decoder.helper.dart';
import 'package:smarthealthy/data/dtos/auth/login_by_email_request.dto.dart';
import 'package:smarthealthy/data/models/user.model.dart';
import 'package:smarthealthy/data/repositories/user.repository.dart';
import 'package:smarthealthy/presentation/auth/bloc/auth/auth.bloc.dart';

part 'login.event.dart';
part 'login.state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({
    required UserRepository userRepository,
    required AuthBloc authBloc,
  })  : _userRepository = userRepository,
        _authBloc = authBloc,
        super(LoginInitial()) {
    on<LoginSubmit>(_onLoginSubmit);
  }

  final UserRepository _userRepository;
  final AuthBloc _authBloc;

  Future<void> _onLoginSubmit(
    LoginSubmit event,
    Emitter<LoginState> emit,
  ) async {
    emit(LoginLoading());

    try {
      final response = await _userRepository.loginByEmail(
        LoginByEmailRequestDTO(
          email: event.email,
          password: event.password,
        ),
      );

      await _userRepository.setUserAuth(response);

      final UserModel user = UserModel.fromJson(
        JwtDecoderHelper.decode(response.accessToken)['user'],
      );

      _authBloc.add(AuthUserSet(user));
    } catch (err) {
      bool isUnauthorizedError =
          err is DioError && err.response?.statusCode == 401;

      if (isUnauthorizedError) {
        emit(
          const LoginFailure(
            error: AuthErrorType.incorrectEmailPassword,
          ),
        );
      } else {
        emit(const LoginFailure(error: AuthErrorType.unknown));
      }
    }
  }
}
