// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_meal.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$_AddMealDTOToJson(_$_AddMealDTO instance) =>
    <String, dynamic>{
      'typeOfMeal': _$MealTypeEnumMap[instance.typeOfMeal]!,
      'dishes': instance.dishes.map((e) => e.toJson()).toList(),
    };

const _$MealTypeEnumMap = {
  MealType.breakfast: 'breakfast',
  MealType.lunch: 'lunch',
  MealType.dinner: 'dinner',
};
