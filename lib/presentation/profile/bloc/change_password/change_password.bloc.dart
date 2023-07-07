import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/data/dtos/change_password.dto.dart';
import 'package:smarthealthy/data/repositories/user.repository.dart';

part 'change_password.event.dart';
part 'change_password.state.dart';
part 'change_password.bloc.freezed.dart';

class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  final UserRepository _userRepository;

  ChangePasswordBloc({required UserRepository userRepository})
      : _userRepository = userRepository,
        super(const ChangePasswordState.initial()) {
    on<ChangePasswordEvent>((event, emit) async {
      await event.map(submit: (submit) => _onSubmit(submit, emit));
    });
  }

  Future<void> _onSubmit(
    _Submit event,
    Emitter<ChangePasswordState> emit,
  ) async {
    emit(const _Loading());

    try {
      await _userRepository.changePassword(event.dto);

      emit(const _Success());
    } on DioError catch (dioError) {
      if (dioError.response?.statusCode == 401) {
        return emit(
          const _Error(ChangePasswordErrorStatus.currentPasswordNotCorrect),
        );
      }

      return emit(const _Error(ChangePasswordErrorStatus.unknown));
    } catch (err) {
      emit(const _Error(ChangePasswordErrorStatus.unknown));
    }
  }
}
