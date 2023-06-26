import 'package:freezed_annotation/freezed_annotation.dart';

part 'media.model.freezed.dart';
part 'media.model.g.dart';

@Freezed(toJson: false)
class MediaModel with _$MediaModel {
  const factory MediaModel({
    required final String id,
    required final String url,
  }) = _MediaModel;

  factory MediaModel.fromJson(Map<String, dynamic> json) =>
      _$MediaModelFromJson(json);
}
