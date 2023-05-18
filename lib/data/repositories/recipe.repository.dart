import 'package:injectable/injectable.dart';
import 'package:smartfood/data/datasources/recipe.datasource.dart';
import 'package:smartfood/data/models/recipe.model.dart';
import 'package:smartfood/data/models/step.model.dart';

@lazySingleton
class RecipeRepository {
  final RecipeDataSource _recipeDataSource;

  RecipeRepository(this._recipeDataSource);

  Future<List<RecipeStep>> getRecipeSteps() {
    return _recipeDataSource.getRecipeSteps();
  }

  Future<List<RecipeModel>> getRecipeByIngredients(
    List<String> ingredientIds,
  ) {
    return _recipeDataSource.getRecipeByIngredients(ingredientIds);
  }
}