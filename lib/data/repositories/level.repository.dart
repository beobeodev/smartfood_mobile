import 'package:injectable/injectable.dart';
import 'package:smarthealthy/data/datasources/level.datasource.dart';
import 'package:smarthealthy/data/models/level.model.dart';

@lazySingleton
class LevelRepository {
  final LevelDataSource _levelDataSource;

  LevelRepository(this._levelDataSource);

  Future<List<LevelModel>> getLevels() {
    return _levelDataSource.getLevels();
  }
}
