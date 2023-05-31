import 'package:injectable/injectable.dart';
import 'package:smarthealthy/data/datasources/cuisine.datasource.dart';
import 'package:smarthealthy/data/models/cuisine.model.dart';

@lazySingleton
class CuisineRepository {
  final CuisineDataSource _cuisineDataSource;

  CuisineRepository(this._cuisineDataSource);

  Future<List<CuisineModel>> getCuisines() {
    return _cuisineDataSource.getCuisines();
  }
}
