import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/data/dtos/pagination/pagination_meta.dto.dart';
import 'package:smarthealthy/data/models/meal.model.dart';

part 'get_meals.dto.freezed.dart';
part 'get_meals.dto.g.dart';

@Freezed(toJson: false)
class GetMealsDTO with _$GetMealsDTO {
  const factory GetMealsDTO({
    required final List<MealModel> data,
    required final PaginationMetaDTO meta,
  }) = _GetMealsDTO;

  factory GetMealsDTO.fromJson(Map<String, dynamic> json) =>
      _$GetMealsDTOFromJson(json);
}
