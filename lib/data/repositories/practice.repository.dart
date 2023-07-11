import 'package:injectable/injectable.dart';
import 'package:smarthealthy/data/datasources/practice.datasource.dart';
import 'package:smarthealthy/data/dtos/add_practice.dto.dart';
import 'package:smarthealthy/data/dtos/get_practice_result.dto.dart';
import 'package:smarthealthy/data/dtos/pagination/pagination_query.dto.dart';
import 'package:smarthealthy/data/models/diary.model.dart';

@lazySingleton
class PracticeRepository {
  final PracticeDataSource _dataSource;

  PracticeRepository(this._dataSource);

  Future<GetPracticeResultDTO> get(PaginationQueryDTO dto) {
    return _dataSource.get(dto);
  }

  Future<DiaryModel> add(AddPracticeDTO dto) {
    return _dataSource.add(dto);
  }

  Future<void> delete(String practiceId) {
    return _dataSource.delete(practiceId);
  }
}
