import 'package:injectable/injectable.dart';
import 'package:smarthealthy/common/constants/endpoints.dart';
import 'package:smarthealthy/common/helpers/dio.helper.dart';
import 'package:smarthealthy/data/dtos/get_ingredient.dto.dart';
import 'package:smarthealthy/data/dtos/pagination/pagination_query.dto.dart';

@lazySingleton
class IngredientDataSource {
  final DioHelper _dio;

  IngredientDataSource(this._dio);

  Future<GetIngredientDTO> getIngredients(
    PaginationQueryDTO queryIngredientDTO,
  ) async {
    final response = await _dio.get(
      Endpoints.ingredient,
      queryParameters: queryIngredientDTO.toJson(),
    );

    return GetIngredientDTO.fromJson(response.data);
  }
}
