// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'level.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LevelModel _$$_LevelModelFromJson(Map<String, dynamic> json) =>
    _$_LevelModel(
      id: json['id'] as String,
      name: $enumDecode(_$RecipeLevelEnumMap, json['name']),
    );

const _$RecipeLevelEnumMap = {
  RecipeLevel.easy: 'Dễ',
  RecipeLevel.medium: 'Vừa',
  RecipeLevel.hard: 'Khó',
};
