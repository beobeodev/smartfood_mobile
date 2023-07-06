import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/common/enums/gender_type.enum.dart';
import 'package:smarthealthy/common/enums/pratice_mode.enum.dart';

part 'user_nutrition.dto.freezed.dart';
part 'user_nutrition.dto.g.dart';

@Freezed(fromJson: false, toJson: true)
class UpdateUserNutritionDTO with _$UpdateUserNutritionDTO {
  factory UpdateUserNutritionDTO({
    required int age,
    required GenderType gender,
    required double height,
    required double weight,
    required PracticeMode practiceMode,
  }) = _UpdateUserNutritionDTO;
}
