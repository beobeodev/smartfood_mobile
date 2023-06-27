import 'dart:convert';

import 'package:smarthealthy/common/constants/hive_keys.dart';
import 'package:smarthealthy/data/dtos/auth/login_response.dto.dart';
import 'package:smarthealthy/data/models/user.model.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class UserLocalDataSource {
  UserLocalDataSource({
    @Named(HiveKeys.authBox) required Box authBox,
  }) : _authBox = authBox;

  final Box _authBox;

  String? getAccessToken() {
    final String? rawData = _authBox.get(HiveKeys.accessToken);

    return rawData;
  }

  Future<void> setUserInfo(UserModel user) async {
    await _authBox.put(HiveKeys.user, jsonEncode(user));
  }

  Future<void> setUserAuth(LoginResponseDTO response) async {
    await _authBox.putAll({
      ...response.toRefreshTokenDTO().toLocalJson(),
    });
  }

  Future<void> clearAuthBox() async {
    await _authBox.clear();
  }
}
