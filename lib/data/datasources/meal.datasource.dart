import 'package:injectable/injectable.dart';
import 'package:smarthealthy/common/constants/endpoints.dart';
import 'package:smarthealthy/common/extensions/date_time.extension.dart';
import 'package:smarthealthy/common/helpers/dio.helper.dart';
import 'package:smarthealthy/data/dtos/add_meal.dto.dart';
import 'package:smarthealthy/data/models/meal.model.dart';

@lazySingleton
class MealDataSource {
  final DioHelper _dioHelper;

  MealDataSource(this._dioHelper);

  Future<List<MealModel>> addMeal(AddMealDTO addMealDTO) async {
    final response = await _dioHelper.post(
      Endpoints.diary,
      data: addMealDTO.toJson(),
      queryParameters: {'date': addMealDTO.date.formatYearMonthDay()},
    );

    return List.from(response.data['data'])
        .map((e) => MealModel.fromJson(e))
        .toList();
  }

  Future<void> deleteMeal(String id) async {
    await _dioHelper.delete('${Endpoints.deleteMeal}/$id');
  }
}
