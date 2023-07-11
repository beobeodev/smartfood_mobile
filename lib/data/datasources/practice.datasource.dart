import 'package:injectable/injectable.dart';
import 'package:smarthealthy/common/constants/endpoints.dart';
import 'package:smarthealthy/common/extensions/date_time.extension.dart';
import 'package:smarthealthy/common/helpers/dio.helper.dart';
import 'package:smarthealthy/data/dtos/add_practice.dto.dart';
import 'package:smarthealthy/data/dtos/get_practice_result.dto.dart';
import 'package:smarthealthy/data/dtos/pagination/pagination_query.dto.dart';
import 'package:smarthealthy/data/models/diary.model.dart';

@lazySingleton
class PracticeDataSource {
  final DioHelper _dioHelper;

  PracticeDataSource(this._dioHelper);

  Future<GetPracticeResultDTO> get(PaginationQueryDTO dto) async {
    final response = await _dioHelper.get(
      Endpoints.getExercise,
      queryParameters: dto.toJson(),
    );

    return GetPracticeResultDTO.fromJson(response.data);
  }

  Future<DiaryModel> add(AddPracticeDTO dto) async {
    final response = await _dioHelper.post(
      Endpoints.diaryPractice,
      queryParameters: {'date': dto.date.formatYearMonthDay()},
      data: dto.toJson(),
    );

    return DiaryModel.fromJson(response.data['data']);
  }

  Future<void> delete(String practiceId) async {
    await _dioHelper.delete('${Endpoints.diaryPractice}/$practiceId');
  }
}
