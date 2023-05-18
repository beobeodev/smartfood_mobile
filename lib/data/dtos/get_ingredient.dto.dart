import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartfood/data/dtos/pagination/pagination_meta.dto.dart';
import 'package:smartfood/data/models/ingredient.model.dart';

part 'get_ingredient.dto.freezed.dart';
part 'get_ingredient.dto.g.dart';

@Freezed(toJson: false)
class GetIngredientDTO with _$GetIngredientDTO {
  const factory GetIngredientDTO({
    required final List<IngredientModel> content,
    required final PaginationMetaDTO meta,
  }) = _GetIngredientDTO;

  factory GetIngredientDTO.fromJson(Map<String, dynamic> json) =>
      _$GetIngredientDTOFromJson(json);
}
