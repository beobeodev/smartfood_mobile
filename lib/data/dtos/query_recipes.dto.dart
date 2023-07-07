import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/common/extensions/map.extension.dart';
import 'package:smarthealthy/data/dtos/pagination/pagination_query.dto.dart';
import 'package:smarthealthy/data/models/ingredient.model.dart';

part 'query_recipes.dto.freezed.dart';

@freezed
class QueryRecipesDTO with _$QueryRecipesDTO {
  const QueryRecipesDTO._();

  const factory QueryRecipesDTO({
    List<IngredientModel>? ingredients,
    required final PaginationQueryDTO pagination,
  }) = _QueryRecipesDTO;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> result = pagination.toJson();

    if (ingredients != null && ingredients!.isNotEmpty) {
      result.writeNotNull(
        'filter.quantification.ingredient.slug',
        _ingredientSlugToJson(ingredients?.map((e) => e.slug).toList()),
      );
    }

    return result;
  }
}

String? _ingredientSlugToJson(List<String>? ids) {
  if (ids == null) return null;
  return '\$in:${ids.join(',')}';
}
