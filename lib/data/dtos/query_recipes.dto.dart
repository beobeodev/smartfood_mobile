import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/common/extensions/map.extension.dart';
import 'package:smarthealthy/data/dtos/pagination/pagination_query.dto.dart';

part 'query_recipes.dto.freezed.dart';

@freezed
class QueryRecipesDTO with _$QueryRecipesDTO {
  const QueryRecipesDTO._();

  const factory QueryRecipesDTO({
    List<String>? ids,
    required final PaginationQueryDTO pagination,
  }) = _QueryRecipesDTO;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> result = pagination.toJson();

    result.writeNotNull(
      'filter.quantification.ingredient.id',
      _ingredientIdsToJson(ids),
    );

    return result;
  }
}

String? _ingredientIdsToJson(List<String>? ids) {
  if (ids == null) return null;
  return '\$in:${ids.join(',')}';
}
