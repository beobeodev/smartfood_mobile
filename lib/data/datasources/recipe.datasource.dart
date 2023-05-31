import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:smarthealthy/common/constants/endpoints.dart';
import 'package:smarthealthy/common/helpers/dio.helper.dart';
import 'package:smarthealthy/data/dtos/get_recipes.dto.dart';
import 'package:smarthealthy/data/dtos/pagination/pagination_meta.dto.dart';
import 'package:smarthealthy/data/dtos/query_recipes.dto.dart';
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

  Future<GetRecipesDTO> getRecipeByIngredients(
    QueryRecipesDTO queryDto,
  ) async {
    final response = await _dioHelper.get(
      Endpoints.getRecipesByIngredients,
      queryParameters: {'ids': queryDto.ids},
    );

    log('message');

    return GetRecipesDTO(
      data: (response.data as List<dynamic>)
          .map((e) => RecipeModel.fromJson(e))
          .toList(),
      meta: PaginationMetaDTO(
        itemsPerPage: 10,
        totalItems: 10,
        currentPage: 1,
        totalPages: 1,
      ),
    );
  }

  Future<GetRecipesDTO> getRecipes(
    QueryRecipesDTO queryDto,
  ) async {
    final response = await _dioHelper.get(
      Endpoints.recipe,
      queryParameters: queryDto.pagination.toJson(),
    );

    return GetRecipesDTO.fromJson(response.data);
  }
}
