import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_profile.dto.freezed.dart';
part 'update_profile.dto.g.dart';

@Freezed(toJson: true, fromJson: false)
class UpdateProfileDTO with _$UpdateProfileDTO {
  factory UpdateProfileDTO({
    required String firstName,
    required String lastName,
  }) = _UpdateProfileDTO;
}
