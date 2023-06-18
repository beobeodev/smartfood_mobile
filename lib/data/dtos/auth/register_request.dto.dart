import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_request.dto.freezed.dart';
part 'register_request.dto.g.dart';

@Freezed(fromJson: false, toJson: true)
class RegisterRequestDTO with _$RegisterRequestDTO {
  factory RegisterRequestDTO({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  }) = _RegisterRequestDTO;
}
