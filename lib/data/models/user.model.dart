import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/common/enums/gender_type.enum.dart';
import 'package:smarthealthy/common/enums/pratice_index.enum.dart';
import 'package:smarthealthy/common/utils/json_time_converter.util.dart';

part 'user.model.freezed.dart';
part 'user.model.g.dart';

@Freezed(toJson: false)
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
    PracticeIndex? practiceIndex,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  @JsonKey(includeFromJson: false, includeToJson: false)
  bool get hasNutrition => startNutritionDate != null;

  @JsonKey(includeFromJson: false, includeToJson: false)
  String get fullName => '$firstName $lastName';
}
