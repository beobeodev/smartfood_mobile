import 'package:injectable/injectable.dart';
import 'package:smarthealthy/data/datasources/ingredient.datasource.dart';
import 'package:smarthealthy/data/dtos/get_ingredient.dto.dart';
import 'package:smarthealthy/data/dtos/pagination/pagination_query.dto.dart';

@lazySingleton
class IngredientRepository {
  final IngredientDataSource _dataSource;

  IngredientRepository(this._dataSource);

  Future<GetIngredientDTO> getIngredients(
    PaginationQueryDTO queryIngredientDTO,
  ) {
    return _dataSource.getIngredients(queryIngredientDTO);
  }
}
