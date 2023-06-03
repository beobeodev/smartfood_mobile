import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/data/dtos/pagination/pagination_meta.dto.dart';
import 'package:smarthealthy/data/models/ingredient.model.dart';

part 'get_ingredient_result.dto.freezed.dart';
part 'get_ingredient_result.dto.g.dart';

@Freezed(toJson: false)
class GetIngredientResultDTO with _$GetIngredientResultDTO {
  const factory GetIngredientResultDTO({
    required final List<IngredientModel> data,
    required final PaginationMetaDTO meta,
  }) = _GetIngredientResultDTO;

  factory GetIngredientResultDTO.fromJson(Map<String, dynamic> json) =>
      _$GetIngredientResultDTOFromJson(json);
}
