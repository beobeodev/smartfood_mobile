import 'package:smarthealthy/data/dtos/auth/refresh_token.dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_response.dto.g.dart';

@JsonSerializable(createToJson: false)
class LoginResponseDTO {
  LoginResponseDTO({
    required this.accessToken,
    this.refreshToken,
    this.expiresIn,
  });

  factory LoginResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseDTOFromJson(json);

  final String accessToken;
  final String? refreshToken;
  final int? expiresIn;

  RefreshTokenDTO toRefreshTokenDTO() {
    return RefreshTokenDTO(
      accessToken: accessToken,
      refreshToken: refreshToken,
      expiresIn: expiresIn,
    );
  }
}
