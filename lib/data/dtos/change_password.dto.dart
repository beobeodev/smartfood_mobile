import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password.dto.freezed.dart';
part 'change_password.dto.g.dart';

@Freezed(fromJson: false, toJson: true)
class ChangePasswordDTO with _$ChangePasswordDTO {
  factory ChangePasswordDTO({
    required String currentPassword,
    required String newPassword,
    required String confirmPassword,
  }) = _ChangePasswordDTO;
}
