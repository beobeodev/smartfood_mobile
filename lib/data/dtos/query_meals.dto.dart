import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/common/extensions/map.extension.dart';
import 'package:smarthealthy/data/dtos/pagination/pagination_query.dto.dart';

part 'query_meals.dto.freezed.dart';

@freezed
class QueryMealsDTO with _$QueryMealsDTO {
  const QueryMealsDTO._();

  const factory QueryMealsDTO({
    required final PaginationQueryDTO pagination,
    @Default(true) bool getNutrition,
  }) = _QueryRecipesDTO;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> result = pagination.toJson();

    result.writeNotNull(
      'getNutrition',
      getNutrition,
    );

    return result;
  }
}
