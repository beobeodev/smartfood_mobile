// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diary.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DiaryModel _$$_DiaryModelFromJson(Map<String, dynamic> json) =>
    _$_DiaryModel(
      date: DateTime.parse(json['date'] as String),
      totalCalories: (json['totalCalories'] as num?)?.toDouble(),
      fat: (json['fat'] as num?)?.toDouble(),
      carbs: (json['carbs'] as num?)?.toDouble(),
      protein: (json['protein'] as num?)?.toDouble(),
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
      exercises: (json['exercises'] as List<dynamic>?)
              ?.map((e) => PracticeModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );
