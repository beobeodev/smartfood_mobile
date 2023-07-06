part of 'update_profile.bloc.dart';

@freezed
class UpdateProfileEvent with _$UpdateProfileEvent {
  const factory UpdateProfileEvent.submit(UpdateProfileDTO dto) = _Submit;
}
