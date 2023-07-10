// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_meals.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetMealsDTO _$$_GetMealsDTOFromJson(Map<String, dynamic> json) =>
    _$_GetMealsDTO(
      data: (json['data'] as List<dynamic>)
          .map((e) => MealModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: PaginationMetaDTO.fromJson(json['meta'] as Map<String, dynamic>),
    );
