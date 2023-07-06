import 'package:injectable/injectable.dart';
import 'package:smarthealthy/data/datasources/meal.datasource.dart';
import 'package:smarthealthy/data/dtos/add_meal.dto.dart';
import 'package:smarthealthy/data/models/meal.model.dart';

@lazySingleton
class MealRepository {
  final MealDataSource _dataSource;

  MealRepository(this._dataSource);

  Future<List<MealModel>> addMeal(AddMealDTO addMealDTO) {
    return _dataSource.addMeal(addMealDTO);
  }

  Future<void> deleteMeal(String id) {
    return _dataSource.deleteMeal(id);
  }
}
