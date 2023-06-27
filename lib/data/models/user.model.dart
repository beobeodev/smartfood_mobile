import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.model.freezed.dart';
part 'user.model.g.dart';

@Freezed(toJson: false)
class UserModel with _$UserModel {
  const UserModel._();

  factory UserModel({
    required String id,
    required String firstName,
    required String lastName,
    required String email,
    String? avatar,
    double? height,
    double? weight,
    int? age,
    bool? gender,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  @JsonKey(includeFromJson: false, includeToJson: false)
  bool get hasNutrition =>
      height != null && weight != null && age != null && gender != null;

  @JsonKey(includeFromJson: false, includeToJson: false)
  String get fullName => '$firstName $lastName';
}
