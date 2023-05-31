// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecipeModel _$$_RecipeModelFromJson(Map<String, dynamic> json) =>
    _$_RecipeModel(
      id: json['id'] as String,
      name: json['name'] as String,
      level: LevelModel.fromJson(json['level'] as Map<String, dynamic>),
      category:
          CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      cuisine: CuisineModel.fromJson(json['cuisine'] as Map<String, dynamic>),
      description: json['description'] as String,
    );
