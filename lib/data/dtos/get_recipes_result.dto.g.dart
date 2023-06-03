// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_recipes_result.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetRecipeResultDTO _$$_GetRecipeResultDTOFromJson(
        Map<String, dynamic> json) =>
    _$_GetRecipeResultDTO(
      data: (json['data'] as List<dynamic>)
          .map((e) => RecipeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: PaginationMetaDTO.fromJson(json['meta'] as Map<String, dynamic>),
    );
