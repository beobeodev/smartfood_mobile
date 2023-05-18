// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecipeModel _$$_RecipeModelFromJson(Map<String, dynamic> json) =>
    _$_RecipeModel(
      id: json['id'] as String,
      name: json['name'] as String,
      level: $enumDecode(_$RecipeLevelEnumMap, json['level']),
      description: json['description'] as String,
    );

const _$RecipeLevelEnumMap = {
  RecipeLevel.easy: 'Dễ',
  RecipeLevel.medium: 'Vừa',
  RecipeLevel.hard: 'Khó',
};
