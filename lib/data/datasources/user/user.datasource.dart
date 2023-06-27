import 'package:smarthealthy/data/datasources/user/local/user.datasource.dart';
import 'package:smarthealthy/data/datasources/user/remote/user.datasource.dart';
import 'package:smarthealthy/data/dtos/auth/login_by_email_request.dto.dart';
import 'package:smarthealthy/data/dtos/auth/login_response.dto.dart';
import 'package:smarthealthy/data/dtos/auth/register_request.dto.dart';
import 'package:injectable/injectable.dart';
import 'package:smarthealthy/data/models/user.model.dart';

@lazySingleton
class UserDataSource {
  UserDataSource({
    required UserRemoteDataSource remoteDataSource,
    required UserLocalDataSource localDataSource,
  })  : _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource;

  final UserRemoteDataSource _remoteDataSource;
  final UserLocalDataSource _localDataSource;

  Future<LoginResponseDTO> loginByEmail(LoginByEmailRequestDTO params) async {
    final LoginResponseDTO loginResponse =
        await _remoteDataSource.loginByEmail(params);

    // await _localDataSource.setUserAuth(loginResponse);
    return loginResponse;
  }

  Future<void> register(RegisterRequestDTO registerDto) {
    return _remoteDataSource.register(registerDto);
  }

  Future<UserModel> getUserProfile() {
    return _remoteDataSource.getUserProfile();
  }

  String? getAccessToken() {
    return _localDataSource.getAccessToken();
  }

  Future<void> setUserAuth(LoginResponseDTO response) {
    return _localDataSource.setUserAuth(response);
  }

  Future<void> clearAuthBox() {
    return _localDataSource.clearAuthBox();
  }
}
