import 'package:injectable/injectable.dart';

import 'package:smarthealthy/common/helpers/dio.helper.dart';
import 'package:smarthealthy/di/providers/dio_provider.dart';

@module
abstract class NetworkModule {
  @lazySingleton
  DioHelper provideDioHelper(DioProvider dioProvider) {
    return DioHelper(dio: dioProvider.getDio());
  }
}
