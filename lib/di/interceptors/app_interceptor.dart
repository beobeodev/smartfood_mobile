import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:smarthealthy/common/constants/hive_keys.dart';
import 'package:smarthealthy/data/dtos/auth/refresh_token.dto.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

class AppInterceptor extends QueuedInterceptor {
  AppInterceptor({
    @Named(HiveKeys.authBox) required Box authBox,
    required Dio dio,
  })  : _authBox = authBox,
        _dio = dio;

  final Box _authBox;
  final Dio _dio;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    log(
      'REQUEST[${options.method}] => PATH: ${options.path} | QUERY: ${options.queryParameters} | DATA: ${options.data}',
      name: 'Interceptor: onRequest',
    );

    // _checkTokenExpired();

    final String? accessToken = _authBox.get(HiveKeys.accessToken);

    if (accessToken != null) {
      options.headers.addAll({
        HttpHeaders.authorizationHeader: 'Bearer $accessToken',
      });
    }

    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log(
      'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}',
      name: 'Interceptor: onResponse',
    );

    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    // if (err.response?.statusCode == 401) {
    //   // HACK: handle logout, maybe
    // }

    log(
      'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}',
      name: 'Interceptor: onError',
    );

    return super.onError(err, handler);
  }

  Future<void> _checkTokenExpired() async {
    final String? expiredTime = _authBox.get(HiveKeys.expiresIn);

    if (expiredTime != null &&
        DateTime.parse(expiredTime)
            .isBefore(DateTime.now().add(const Duration(seconds: 3)))) {
      await _refreshToken();
    }
  }

  Future<void> _refreshToken() async {
    final String? refreshToken = _authBox.get(HiveKeys.refreshToken);

    if (refreshToken == null || refreshToken.isEmpty) {
      // TODO: navigate to login screen

      return;
    }

    log('--[REFRESH TOKEN]--: $refreshToken');

    try {
      final Response response = await _dio.get('');

      final RefreshTokenDTO refreshTokenDTO =
          RefreshTokenDTO.fromJson(response.data);

      await _authBox.putAll(refreshTokenDTO.toLocalJson());
    } catch (err) {
      // TODO: logout
    }
  }
}
