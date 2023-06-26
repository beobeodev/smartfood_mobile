// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecipeModel _$$_RecipeModelFromJson(Map<String, dynamic> json) =>
    _$_RecipeModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      level: LevelModel.fromJson(json['level'] as Map<String, dynamic>),
      category:
          CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      cuisine: CuisineModel.fromJson(json['cuisine'] as Map<String, dynamic>),
      quantification: (json['quantification'] as List<dynamic>?)
          ?.map((e) => QuantificationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      recipeStep: (json['recipeStep'] as List<dynamic>?)
          ?.map((e) => RecipeStepModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => MediaModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
