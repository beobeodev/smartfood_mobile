import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/data/dtos/update_profile.dto.dart';
import 'package:smarthealthy/data/models/user.model.dart';
import 'package:smarthealthy/data/repositories/user.repository.dart';

part 'update_profile.event.dart';
part 'update_profile.state.dart';
part 'update_profile.bloc.freezed.dart';

class UpdateProfileBloc extends Bloc<UpdateProfileEvent, UpdateProfileState> {
  final UserRepository _userRepository;

  UpdateProfileBloc({required UserRepository userRepository})
      : _userRepository = userRepository,
        super(const UpdateProfileState.initial()) {
    on<UpdateProfileEvent>((event, emit) async {
      await event.map(submit: (submit) => _onSubmit(submit, emit));
    });
  }

  Future<void> _onSubmit(
    _Submit event,
    Emitter<UpdateProfileState> emit,
  ) async {
    emit(const _Loading());
    try {
      final newUser = await _userRepository.updateProfile(event.dto);

      emit(_Success(newUser));
    } catch (err) {
      emit(const _Error());
    }
  }
}
