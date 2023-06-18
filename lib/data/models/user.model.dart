import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.model.freezed.dart';
part 'user.model.g.dart';

@Freezed(toJson: false)
class UserModel with _$UserModel {
  factory UserModel({
    required String id,
    required String firstName,
    required String lastName,
    double? height,
    double? weight,
    int? age,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
