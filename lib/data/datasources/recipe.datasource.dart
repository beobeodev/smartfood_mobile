import 'package:injectable/injectable.dart';
import 'package:smarthealthy/common/constants/endpoints.dart';
import 'package:smarthealthy/common/helpers/dio.helper.dart';
import 'package:smarthealthy/data/dtos/get_recipes_result.dto.dart';
import 'package:smarthealthy/data/dtos/query_recipes.dto.dart';
import 'package:smarthealthy/data/dtos/submit_recipe_rating.dto.dart';
import 'package:smarthealthy/data/models/recipe.model.dart';

@lazySingleton
class RecipeDataSource {
  final DioHelper _dioHelper;

  RecipeDataSource(this._dioHelper);

  Future<GetRecipeResultDTO> getRecipeByIngredients(
    QueryRecipesDTO queryDto,
  ) async {
    final response = await _dioHelper.get(
      Endpoints.getRecipesByIngredients,
      queryParameters: queryDto.toJson(),
    );

    return GetRecipeResultDTO.fromJson(response.data);
  }

  Future<GetRecipeResultDTO> getRecipes(
    QueryRecipesDTO queryDto,
  ) async {
    final response = await _dioHelper.get(
      Endpoints.recipes,
      queryParameters: queryDto.pagination.toJson(),
    );

    return GetRecipeResultDTO.fromJson(response.data);
  }

  Future<RecipeModel> getRecipeDetail(String recipeId) async {
    final response = await _dioHelper.get('${Endpoints.recipes}/$recipeId');

    return RecipeModel.fromJson(response.data);
  }

  Future<List<RecipeModel>> getRecommendedRecipes() async {
    final response = await _dioHelper.get(Endpoints.recommendedRecipes);

    return (response.data['data'] as List)
        .map((e) => RecipeModel.fromJson(e))
        .toList();
  }

  Future<void> sendRating(SubmitRecipeRatingDTO dto) async {
    await _dioHelper.post(
      '${Endpoints.recipeRating}/${dto.id}',
      data: dto.toJson(),
    );
  }

  Future<void> sendCook(String recipeId) async {
    await _dioHelper.post('${Endpoints.cook}/$recipeId');
  }
}
