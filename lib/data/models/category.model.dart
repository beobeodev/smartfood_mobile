import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.model.freezed.dart';
part 'category.model.g.dart';

@Freezed(toJson: false, addImplicitFinal: false, equal: true)
class CategoryModel with _$CategoryModel {
  factory CategoryModel({
    required final String id,
    required final String name,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
        bool isChosen,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}
