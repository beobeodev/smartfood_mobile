import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/common/extensions/map.extension.dart';
import 'package:smarthealthy/data/dtos/recipe_filter.dto.dart';
import 'package:smarthealthy/data/dtos/sort.dto.dart';

part 'pagination_query.dto.freezed.dart';

@freezed
class PaginationQueryDTO<T> with _$PaginationQueryDTO {
  const PaginationQueryDTO._();

  @Assert(
    'null is T || T == RecipeFilterDTO',
    'Type of filter model in pagination can be null or RecipeFilterDTO',
  )
  const factory PaginationQueryDTO({
    @Default(1) int page,
    @Default(50) int limit,
    List<SortDTO>? sortBy,
    List<T>? filter,
    String? search,
  }) = _PaginationQueryDTO;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic>? tempFilters =
        _filterToJson<T>(filter as List<T>?);

    final Map<String, dynamic> result = {
      'page': page,
      'limit': limit,
      if (tempFilters != null) ...tempFilters,
    };

    result.writeNotNull('sortBy', _sortByToJson(sortBy));
    result.writeNotNull('search', search);

    return result;
  }
}

List<String>? _sortByToJson(List<SortDTO>? sorts) {
  return sorts?.map((e) => e.toString()).toList();
}

Map<String, dynamic>? _filterToJson<T>(List<T>? filters) {
  if (filters == null) return null;

  switch (T) {
    case RecipeFilterDTO:
      final tempFilter = (filters as List<RecipeFilterDTO>);
      final Map<String, dynamic> result = {};

      for (var item in tempFilter) {
        if (item.values.isNotEmpty) {
          result['filter.${item.type.value}.name'] =
              item.values.mapIndexed((index, e) {
            if (index == 0) {
              return '\$ilike:$e';
            }

            return '\$or:\$ilike:$e';
          }).toList();
        }
      }

      return result;
    default:
      return null;
  }
}
