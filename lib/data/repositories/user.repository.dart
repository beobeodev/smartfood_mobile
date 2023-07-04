import 'package:smarthealthy/data/datasources/user/user.datasource.dart';
import 'package:smarthealthy/data/dtos/auth/login_by_email_request.dto.dart';
import 'package:smarthealthy/data/dtos/auth/login_response.dto.dart';
import 'package:smarthealthy/data/dtos/auth/register_request.dto.dart';
import 'package:injectable/injectable.dart';
import 'package:smarthealthy/data/dtos/user_nutrition.dto.dart';
import 'package:smarthealthy/data/models/user.model.dart';

@lazySingleton
class UserRepository {
  UserRepository({
    required UserDataSource dataSource,
  }) : _dataSource = dataSource;

  final UserDataSource _dataSource;

  Future<LoginResponseDTO> loginByEmail(LoginByEmailRequestDTO params) {
    return _dataSource.loginByEmail(params);
  }

  Future<void> register(RegisterRequestDTO registerDto) {
    return _dataSource.register(registerDto);
  }

  Future<UserModel> getUserProfile() {
    return _dataSource.getUserProfile();
  }

  Future<UserModel> updateNutrition(UpdateUserNutritionDTO userNutrition) {
    return _dataSource.updateNutrition(userNutrition);
  }

  String? getAccessToken() {
    return _dataSource.getAccessToken();
  }

  Future<void> clearAuthBox() {
    return _dataSource.clearAuthBox();
  }

  Future<void> setUserAuth(LoginResponseDTO response) {
    return _dataSource.setUserAuth(response);
  }
}
