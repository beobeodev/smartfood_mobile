import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/common/enums/gender_type.enum.dart';
import 'package:smarthealthy/common/enums/pratice_mode.enum.dart';
import 'package:smarthealthy/common/helpers/nutrition_calculator.dart';
import 'package:smarthealthy/common/utils/json_time_converter.util.dart';
import 'package:smarthealthy/data/dtos/user_nutrition.dto.dart';
import 'package:smarthealthy/presentation/diary/ui_models/nutrition_wrapper.dart';

part 'user.model.freezed.dart';
part 'user.model.g.dart';

@Freezed(toJson: false, equal: true)
class UserModel with _$UserModel {
  const UserModel._();

  const factory UserModel({
    required String id,
    required String firstName,
    required String lastName,
    required String email,
    String? avatar,
    double? height,
    double? weight,
    int? age,
    GenderType? gender,
    @JsonTimeConverter() DateTime? startNutritionDate,
    PracticeMode? practiceMode,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  @JsonKey(includeFromJson: false, includeToJson: false)
  bool get hasNutrition => startNutritionDate != null;

  @JsonKey(includeFromJson: false, includeToJson: false)
  String get fullName => '$firstName $lastName';

  @JsonKey(includeFromJson: false, includeToJson: false)
  NutritionWrapper get nutrition => NutritionCalculator.calculate(
        UpdateUserNutritionDTO(
          age: age!,
          gender: gender!,
          height: height!,
          weight: weight!,
          practiceMode: practiceMode!,
        ),
      );

  @JsonKey(includeFromJson: false, includeToJson: false)
  int get totalCalories => NutritionCalculator.calculateCalorie(
        UpdateUserNutritionDTO(
          age: age!,
          gender: gender!,
          height: height!,
          weight: weight!,
          practiceMode: practiceMode!,
        ),
      );
}
