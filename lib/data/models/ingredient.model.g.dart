// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IngredientModel _$$_IngredientModelFromJson(Map<String, dynamic> json) =>
    _$_IngredientModel(
      id: json['id'] as String,
      name: json['name'] as String? ?? '',
      slug: json['slug'] as String? ?? '',
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => MediaModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
