import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/common/enums/meal_type.enum.dart';
import 'package:smarthealthy/data/models/recipe.model.dart';

part 'diary.model.freezed.dart';
part 'diary.model.g.dart';

@Freezed(toJson: false)
class DiaryModel with _$DiaryModel {
  const DiaryModel._();

  factory DiaryModel({
    required DateTime date,
    int? totalCalorie,
    List<RecipeModel>? dishes,
  }) = _DiaryModel;

  factory DiaryModel.fromJson(Map<String, dynamic> json) =>
      _$DiaryModelFromJson(json);

  @JsonKey(includeFromJson: false, includeToJson: false)
  List<RecipeModel>? get breakfast => dishes
      ?.where((element) => element.mealType == MealType.breakfast)
      .toList();

  @JsonKey(includeFromJson: false, includeToJson: false)
  List<RecipeModel>? get lunch =>
      dishes?.where((element) => element.mealType == MealType.lunch).toList();

  @JsonKey(includeFromJson: false, includeToJson: false)
  List<RecipeModel>? get dinner =>
      dishes?.where((element) => element.mealType == MealType.dinner).toList();
}
