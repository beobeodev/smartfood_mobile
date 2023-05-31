import 'package:injectable/injectable.dart';
import 'package:smarthealthy/data/datasources/recipe.datasource.dart';
import 'package:smarthealthy/data/dtos/get_recipes.dto.dart';
import 'package:smarthealthy/data/dtos/query_recipes.dto.dart';
import 'package:smarthealthy/data/models/step.model.dart';

@lazySingleton
class RecipeRepository {
  final RecipeDataSource _recipeDataSource;

  RecipeRepository(this._recipeDataSource);

  Future<List<RecipeStep>> getRecipeSteps() {
    return _recipeDataSource.getRecipeSteps();
  }

  Future<GetRecipesDTO> getRecipes(QueryRecipesDTO queryDto) {
    if (queryDto.ids != null) {
      return _recipeDataSource.getRecipeByIngredients(queryDto);
    }
    return _recipeDataSource.getRecipes(queryDto);
  }
}
