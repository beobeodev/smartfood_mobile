// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'practice.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PracticeModel _$$_PracticeModelFromJson(Map<String, dynamic> json) =>
    _$_PracticeModel(
      id: json['id'] as String,
      name: json['name'] as String,
      calo: (json['calo'] as num).toDouble(),
      minute: json['minute'] as int,
      practiceDuration: (json['practiceDuration'] as num?)?.toDouble(),
    );
