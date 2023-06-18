import 'package:smarthealthy/data/datasources/user/user.datasource.dart';
import 'package:smarthealthy/data/dtos/auth/login_by_email_request.dto.dart';
import 'package:smarthealthy/data/dtos/auth/register_request.dto.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class UserRepository {
  UserRepository({
    required UserDataSource dataSource,
  }) : _dataSource = dataSource;

  final UserDataSource _dataSource;

  Future<void> loginByEmail(LoginByEmailRequestDTO params) {
    return _dataSource.loginByEmail(params);
  }

  Future<void> register(RegisterRequestDTO registerDto) {
    return _dataSource.register(registerDto);
  }

  bool checkHasLogin() {
    return _dataSource.checkHasLogin();
  }

  Future<void> clearAuthBox() {
    return _dataSource.clearAuthBox();
  }
}
