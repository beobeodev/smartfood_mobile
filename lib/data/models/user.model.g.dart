// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      avatar: json['avatar'] as String?,
      height: (json['height'] as num?)?.toDouble(),
      weight: (json['weight'] as num?)?.toDouble(),
      age: json['age'] as int?,
      gender: $enumDecodeNullable(_$GenderTypeEnumMap, json['gender']),
      startNutritionDate: _$JsonConverterFromJson<String, DateTime>(
          json['startNutritionDate'], const JsonTimeConverter().fromJson),
      practiceMode:
          $enumDecodeNullable(_$PracticeIndexEnumMap, json['practiceMode']),
    );

const _$GenderTypeEnumMap = {
  GenderType.male: 'male',
  GenderType.female: 'female',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

const _$PracticeIndexEnumMap = {
  PracticeIndex.rare: 'rare',
  PracticeIndex.light: 'light',
  PracticeIndex.medium: 'medium',
  PracticeIndex.heavy: 'heavy',
  PracticeIndex.veryHeavy: 'veryHeavy',
};
