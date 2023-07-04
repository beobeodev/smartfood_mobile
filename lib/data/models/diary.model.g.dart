// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diary.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DiaryModel _$$_DiaryModelFromJson(Map<String, dynamic> json) =>
    _$_DiaryModel(
      date: DateTime.parse(json['date'] as String),
      totalCalories: json['totalCalories'] as int,
      breakfast: (json['breakfast'] as List<dynamic>?)
              ?.map((e) => MealModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      lunch: (json['lunch'] as List<dynamic>?)
              ?.map((e) => MealModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      dinner: (json['dinner'] as List<dynamic>?)
              ?.map((e) => MealModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );
