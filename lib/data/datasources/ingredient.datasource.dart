import 'package:injectable/injectable.dart';
import 'package:smartfood/common/constants/endpoints.dart';
import 'package:smartfood/common/helpers/dio.helper.dart';
import 'package:smartfood/data/dtos/get_ingredient.dto.dart';
import 'package:smartfood/data/dtos/pagination/pagination_query.dto.dart';

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
