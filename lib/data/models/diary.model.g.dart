// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diary.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DiaryModel _$$_DiaryModelFromJson(Map<String, dynamic> json) =>
    _$_DiaryModel(
      date: DateTime.parse(json['date'] as String),
      totalCalorie: json['totalCalorie'] as int?,
      dishes: (json['dishes'] as List<dynamic>?)
          ?.map((e) => RecipeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
