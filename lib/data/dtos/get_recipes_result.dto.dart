import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/data/dtos/pagination/pagination_meta.dto.dart';
import 'package:smarthealthy/data/models/recipe.model.dart';

part 'get_recipes_result.dto.freezed.dart';
part 'get_recipes_result.dto.g.dart';

@Freezed(toJson: false)
class GetRecipeResultDTO with _$GetRecipeResultDTO {
  const factory GetRecipeResultDTO({
    required final List<RecipeModel> data,
    required final PaginationMetaDTO meta,
  }) = _GetRecipeResultDTO;

  factory GetRecipeResultDTO.fromJson(Map<String, dynamic> json) =>
      _$GetRecipeResultDTOFromJson(json);
}
