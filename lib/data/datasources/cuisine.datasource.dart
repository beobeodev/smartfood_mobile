import 'package:injectable/injectable.dart';
import 'package:smarthealthy/common/constants/endpoints.dart';
import 'package:smarthealthy/common/helpers/dio.helper.dart';
import 'package:smarthealthy/data/dtos/pagination/pagination_query.dto.dart';
import 'package:smarthealthy/data/models/cuisine.model.dart';

@lazySingleton
class CuisineDataSource {
  final DioHelper _dioHelper;

  CuisineDataSource(this._dioHelper);

  Future<List<CuisineModel>> getCuisines() async {
    final response = await _dioHelper.get(
      Endpoints.cuisine,
      queryParameters: const PaginationQueryDTO().toJson(),
    );

    final result = (response.data['data'] as List<dynamic>)
        .map((e) => CuisineModel.fromJson(e))
        .toList();

    return result;
  }
}
