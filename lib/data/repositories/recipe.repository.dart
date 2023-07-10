import 'package:injectable/injectable.dart';
import 'package:smarthealthy/data/datasources/recipe.datasource.dart';
import 'package:smarthealthy/data/dtos/get_meals.dto.dart';
import 'package:smarthealthy/data/dtos/get_recipes_result.dto.dart';
import 'package:smarthealthy/data/dtos/query_meals.dto.dart';
import 'package:smarthealthy/data/dtos/query_recipes.dto.dart';
import 'package:smarthealthy/data/dtos/submit_recipe_rating.dto.dart';
import 'package:smarthealthy/data/models/recipe.model.dart';

@lazySingleton
class RecipeRepository {
  final RecipeDataSource _dataSource;

  RecipeRepository(this._dataSource);

  Future<GetRecipeResultDTO> getRecipes(QueryRecipesDTO queryDto) {
    if (queryDto.ingredients != null) {
      return _dataSource.getRecipeByIngredients(queryDto);
    }

    return _dataSource.getRecipes(queryDto);
  }

  Future<GetMealsDTO> getMeals(QueryMealsDTO dto) {
    return _dataSource.getMeals(dto);
  }

  Future<RecipeModel> getRecipeDetail(String recipeId) {
    return _dataSource.getRecipeDetail(recipeId);
  }

  Future<List<RecipeModel>> getRecommendedRecipes() {
    return _dataSource.getRecommendedRecipes();
  }

  Future<void> sendRating(SubmitRecipeRatingDTO dto) {
    return _dataSource.sendRating(dto);
  }

  Future<void> sendCook(String recipeId) {
    return _dataSource.sendCook(recipeId);
  }
}
