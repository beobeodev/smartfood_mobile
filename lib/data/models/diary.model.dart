import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/data/models/meal.model.dart';

part 'diary.model.freezed.dart';
part 'diary.model.g.dart';

@Freezed(toJson: false)
class DiaryModel with _$DiaryModel {
  const DiaryModel._();

  factory DiaryModel({
    required DateTime date,
    required int totalCalories,
    @Default([]) List<MealModel> breakfast,
    @Default([]) List<MealModel> lunch,
    @Default([]) List<MealModel> dinner,
  }) = _DiaryModel;

  factory DiaryModel.fromJson(Map<String, dynamic> json) =>
      _$DiaryModelFromJson(json);
}
