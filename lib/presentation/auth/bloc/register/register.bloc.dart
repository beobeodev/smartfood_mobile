import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/common/enums/auth_error_type.enum.dart';
import 'package:smarthealthy/data/dtos/auth/register_request.dto.dart';
import 'package:smarthealthy/data/repositories/user.repository.dart';

part 'register.event.dart';
part 'register.state.dart';
part 'register.bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final UserRepository _userRepository;

  RegisterBloc({required UserRepository userRepository})
      : _userRepository = userRepository,
        super(const RegisterState.initial()) {
    on<RegisterEvent>((event, emit) async {
      await event.map(submit: (event) => _onSubmit(event, emit));
    });
  }

  Future<void> _onSubmit(_Submit event, Emitter<RegisterState> emit) async {
    emit(const RegisterState.loading());

    try {
      await _userRepository.register(event.registerDto);

      emit(const RegisterState.success());
    } on DioError catch (dioError) {
      if (dioError.response?.statusCode == 403) {
        emit(
          const RegisterState.failure(errorType: AuthErrorType.existEmail),
        );
        return;
      }
    } catch (err) {
      emit(const RegisterState.failure(errorType: AuthErrorType.unknown));
    }
  }
}
