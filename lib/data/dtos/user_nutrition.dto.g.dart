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
      'practiceMode': _$PracticeModeEnumMap[instance.practiceMode]!,
    };

const _$GenderTypeEnumMap = {
  GenderType.male: 'male',
  GenderType.female: 'female',
};

const _$PracticeModeEnumMap = {
  PracticeMode.rare: 'rare',
  PracticeMode.light: 'light',
  PracticeMode.medium: 'medium',
  PracticeMode.heavy: 'heavy',
  PracticeMode.veryHeavy: 'veryHeavy',
};
