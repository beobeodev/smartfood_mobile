import 'package:injectable/injectable.dart';
import 'package:smarthealthy/common/constants/endpoints.dart';
import 'package:smarthealthy/common/helpers/dio.helper.dart';
import 'package:smarthealthy/data/mock/recipe.mock.dart';
import 'package:smarthealthy/data/models/recipe.model.dart';
import 'package:smarthealthy/data/models/step.model.dart';

@lazySingleton
class RecipeDataSource {
  final DioHelper _dioHelper;

  RecipeDataSource(this._dioHelper);

  Future<List<RecipeStep>> getRecipeSteps() async {
    await Future.delayed(const Duration(seconds: 1));
    return RecipeMock.recipeSteps;
  }

  Future<List<RecipeModel>> getRecipeByIngredients(
    List<String> ingredientIds,
  ) async {
    final response = await _dioHelper.get(
      Endpoints.getRecipesByIngredients,
      queryParameters: {
        'ids': ingredientIds,
      },
    );

    final result = (response.data as List<dynamic>)
        .map((e) => RecipeModel.fromJson(e))
        .toList();

    return result;
  }
}
