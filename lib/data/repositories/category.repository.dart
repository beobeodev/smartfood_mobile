import 'package:injectable/injectable.dart';
import 'package:smarthealthy/data/datasources/category.datasource.dart';
import 'package:smarthealthy/data/models/category.model.dart';

@lazySingleton
class CategoryRepository {
  final CategoryDataSource _categoryDataSource;

  CategoryRepository(this._categoryDataSource);

  Future<List<CategoryModel>> getCategories() {
    return _categoryDataSource.getCategories();
  }
}
