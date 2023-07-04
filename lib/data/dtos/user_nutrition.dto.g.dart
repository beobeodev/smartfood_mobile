// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_nutrition.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$_UpdateUserNutritionDTOToJson(
        _$_UpdateUserNutritionDTO instance) =>
    <String, dynamic>{
      'age': instance.age,
      'gender': _$GenderTypeEnumMap[instance.gender]!,
      'height': instance.height,
      'weight': instance.weight,
      'practiceIndex': _$PracticeIndexEnumMap[instance.practiceIndex]!,
    };

const _$GenderTypeEnumMap = {
  GenderType.male: 'male',
  GenderType.female: 'female',
};

const _$PracticeIndexEnumMap = {
  PracticeIndex.rare: 'rare',
  PracticeIndex.light: 'light',
  PracticeIndex.medium: 'medium',
  PracticeIndex.heavy: 'heavy',
  PracticeIndex.veryHeavy: 'veryHeavy',
};
