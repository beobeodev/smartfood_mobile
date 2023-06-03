// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_ingredient_result.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetIngredientResultDTO _$$_GetIngredientResultDTOFromJson(
        Map<String, dynamic> json) =>
    _$_GetIngredientResultDTO(
      data: (json['data'] as List<dynamic>)
          .map((e) => IngredientModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: PaginationMetaDTO.fromJson(json['meta'] as Map<String, dynamic>),
    );
