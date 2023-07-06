import 'package:injectable/injectable.dart';
import 'package:smarthealthy/data/datasources/diary.datasource.dart';
import 'package:smarthealthy/data/models/diary.model.dart';

@lazySingleton
class DiaryRepository {
  final DiaryDataSource _dataSource;

  DiaryRepository(this._dataSource);

  Future<DiaryModel> getDiary(DateTime time) {
    return _dataSource.getDiary(time);
  }
}
