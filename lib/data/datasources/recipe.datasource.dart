import 'package:injectable/injectable.dart';
import 'package:smartfood/common/helpers/dio.helper.dart';
import 'package:smartfood/data/mock/recipe.mock.dart';
import 'package:smartfood/data/models/step.model.dart';

@lazySingleton
class RecipeDataSource {
  final DioHelper _dioHelper;

  RecipeDataSource(this._dioHelper);

  Future<List<RecipeStep>> getRecipeSteps() async {
    await Future.delayed(const Duration(seconds: 1));
    return RecipeMock.recipeSteps;
  }
}
