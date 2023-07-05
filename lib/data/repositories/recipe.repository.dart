import 'package:injectable/injectable.dart';
import 'package:smarthealthy/data/datasources/recipe.datasource.dart';
import 'package:smarthealthy/data/dtos/get_recipes_result.dto.dart';
import 'package:smarthealthy/data/dtos/query_recipes.dto.dart';
import 'package:smarthealthy/data/dtos/submit_recipe_rating.dto.dart';
import 'package:smarthealthy/data/models/recipe.model.dart';

@lazySingleton
class RecipeRepository {
  final RecipeDataSource _recipeDataSource;

  RecipeRepository(this._recipeDataSource);

  Future<GetRecipeResultDTO> getRecipes(QueryRecipesDTO queryDto) {
    if (queryDto.ingredients != null) {
      return _recipeDataSource.getRecipeByIngredients(queryDto);
    }

    return _recipeDataSource.getRecipes(queryDto);
  }

  Future<RecipeModel> getRecipeDetail(String recipeId) {
    return _recipeDataSource.getRecipeDetail(recipeId);
  }

  Future<List<RecipeModel>> getRecommendedRecipes() {
    return _recipeDataSource.getRecommendedRecipes();
  }

  Future<void> sendRating(SubmitRecipeRatingDTO dto) async {
    return _recipeDataSource.sendRating(dto);
  }
}
