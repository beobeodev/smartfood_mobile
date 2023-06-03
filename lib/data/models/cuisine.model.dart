import 'package:freezed_annotation/freezed_annotation.dart';

part 'cuisine.model.freezed.dart';
part 'cuisine.model.g.dart';

@Freezed(toJson: false, addImplicitFinal: false, equal: true)
class CuisineModel with _$CuisineModel {
  factory CuisineModel({
    required final String id,
    required final String name,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
        bool isChosen,
  }) = _CuisineModel;

  factory CuisineModel.fromJson(Map<String, dynamic> json) =>
      _$CuisineModelFromJson(json);
}
