// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MealModel _$$_MealModelFromJson(Map<String, dynamic> json) => _$_MealModel(
      type: $enumDecode(_$MealTypeEnumMap, json['type']),
      name: json['name'] as String,
      calorie: json['calorie'] as int,
      carbs: json['carbs'] as int,
      protein: json['protein'] as int,
      fat: json['fat'] as int,
    );

const _$MealTypeEnumMap = {
  MealType.breakfast: 'breakfast',
  MealType.lunch: 'lunch',
  MealType.dinner: 'dinner',
};
