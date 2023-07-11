// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MealModel _$$_MealModelFromJson(Map<String, dynamic> json) => _$_MealModel(
      id: json['id'] as String?,
      recipe: RecipeModel.fromJson(json['recipe'] as Map<String, dynamic>),
      kcal: (json['kcal'] as num).toDouble(),
      fat: (json['fat'] as num).toDouble(),
      carbs: (json['carbs'] as num).toDouble(),
      protein: (json['protein'] as num).toDouble(),
      totalPeople: json['totalPeople'] as int? ?? 1,
    );
