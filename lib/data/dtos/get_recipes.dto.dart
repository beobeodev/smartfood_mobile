import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/data/dtos/pagination/pagination_meta.dto.dart';
import 'package:smarthealthy/data/models/recipe.model.dart';

part 'get_recipes.dto.freezed.dart';
part 'get_recipes.dto.g.dart';

@Freezed(toJson: false)
class GetRecipesDTO with _$GetRecipesDTO {
  const factory GetRecipesDTO({
    required final List<RecipeModel> data,
    required final PaginationMetaDTO meta,
  }) = _GetRecipesDTO;

  factory GetRecipesDTO.fromJson(Map<String, dynamic> json) =>
      _$GetRecipesDTOFromJson(json);
}
