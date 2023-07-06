part of 'update_profile.bloc.dart';

@freezed
class UpdateProfileState with _$UpdateProfileState {
  const factory UpdateProfileState.initial() = _Initial;
  const factory UpdateProfileState.loading() = _Loading;
  const factory UpdateProfileState.success(UserModel user) = _Success;
  const factory UpdateProfileState.error() = _Error;
}
