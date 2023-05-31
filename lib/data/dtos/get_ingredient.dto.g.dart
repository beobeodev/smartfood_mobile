// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_ingredient.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetIngredientDTO _$$_GetIngredientDTOFromJson(Map<String, dynamic> json) =>
    _$_GetIngredientDTO(
      data: (json['data'] as List<dynamic>)
          .map((e) => IngredientModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: PaginationMetaDTO.fromJson(json['meta'] as Map<String, dynamic>),
    );
