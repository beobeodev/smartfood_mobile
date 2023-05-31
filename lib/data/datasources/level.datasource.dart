import 'package:injectable/injectable.dart';
import 'package:smarthealthy/common/constants/endpoints.dart';
import 'package:smarthealthy/common/helpers/dio.helper.dart';
import 'package:smarthealthy/data/dtos/pagination/pagination_query.dto.dart';
import 'package:smarthealthy/data/models/level.model.dart';

@lazySingleton
class LevelDataSource {
  final DioHelper _dioHelper;

  LevelDataSource(this._dioHelper);

  Future<List<LevelModel>> getLevels() async {
    final response = await _dioHelper.get(
      Endpoints.level,
      queryParameters: const PaginationQueryDTO().toJson(),
    );

    final result = (response.data['data'] as List<dynamic>)
        .map((e) => LevelModel.fromJson(e))
        .toList();

    return result;
  }
}
