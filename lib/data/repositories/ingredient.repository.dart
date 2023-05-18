import 'package:injectable/injectable.dart';
import 'package:smartfood/data/datasources/ingredient.datasource.dart';
import 'package:smartfood/data/dtos/get_ingredient.dto.dart';
import 'package:smartfood/data/dtos/pagination/pagination_query.dto.dart';

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
