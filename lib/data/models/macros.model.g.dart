// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'macros.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MacrosModel _$$_MacrosModelFromJson(Map<String, dynamic> json) =>
    _$_MacrosModel(
      type: $enumDecode(_$MacrosTypeEnumMap, json['type']),
      value: (json['value'] as num).toDouble(),
    );

const _$MacrosTypeEnumMap = {
  MacrosType.protein: 'protein',
  MacrosType.carbs: 'carbs',
  MacrosType.fat: 'fat',
};
