import 'package:injectable/injectable.dart';
import 'package:smarthealthy/common/constants/endpoints.dart';
import 'package:smarthealthy/common/extensions/date_time.extension.dart';
import 'package:smarthealthy/common/helpers/dio.helper.dart';
import 'package:smarthealthy/data/dtos/add_meal.dto.dart';
import 'package:smarthealthy/data/models/diary.model.dart';
import 'package:smarthealthy/data/models/meal.model.dart';

@lazySingleton
class DiaryDataSource {
  final DioHelper _dioHelper;

  DiaryDataSource(this._dioHelper);

  Future<DiaryModel> getDiary(DateTime time) async {
    final response = await _dioHelper.get(
      Endpoints.diary,
      queryParameters: {'date': time.formatYearMonthDay()},
    );

    return DiaryModel.fromJson(response.data['data']);
  }

  Future<MealModel> addMeal(AddMealDTO addMealDTO) async {
    final response =
        await _dioHelper.post(Endpoints.diary, data: addMealDTO.toJson());

    return MealModel.fromJson(response.data['data']);
  }
}
