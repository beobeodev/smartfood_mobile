import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/data/dtos/pagination/pagination_query.dto.dart';

part 'query_recipes.dto.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class QueryRecipesDTO with _$QueryRecipesDTO {
  const factory QueryRecipesDTO({
    List<String>? ids,
    required final PaginationQueryDTO pagination,
  }) = _QueryRecipesDTO;
}
