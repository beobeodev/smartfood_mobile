import 'package:injectable/injectable.dart';
import 'package:smarthealthy/common/constants/endpoints.dart';
import 'package:smarthealthy/common/helpers/dio.helper.dart';
import 'package:smarthealthy/data/dtos/pagination/pagination_query.dto.dart';
import 'package:smarthealthy/data/models/category.model.dart';

@lazySingleton
class CategoryDataSource {
  final DioHelper _dioHelper;

  CategoryDataSource(this._dioHelper);

  Future<List<CategoryModel>> getCategories() async {
    final response = await _dioHelper.get(
      Endpoints.category,
      queryParameters: const PaginationQueryDTO().toJson(),
    );

    final result = (response.data['data'] as List<dynamic>)
        .map((e) => CategoryModel.fromJson(e))
        .toList();

    return result;
  }
}
