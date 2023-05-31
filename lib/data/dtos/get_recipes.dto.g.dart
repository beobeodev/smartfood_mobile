// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_recipes.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetRecipesDTO _$$_GetRecipesDTOFromJson(Map<String, dynamic> json) =>
    _$_GetRecipesDTO(
      data: (json['data'] as List<dynamic>)
          .map((e) => RecipeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: PaginationMetaDTO.fromJson(json['meta'] as Map<String, dynamic>),
    );
