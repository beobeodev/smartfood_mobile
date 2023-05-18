import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_meta.dto.freezed.dart';
part 'pagination_meta.dto.g.dart';

@Freezed(toJson: false)
class PaginationMetaDTO with _$PaginationMetaDTO {
  const PaginationMetaDTO._();

  factory PaginationMetaDTO({
    required final int totalRecord,
    required final int currentPage,
    required final int currentSize,
  }) = _PaginationMetaDTO;

  @JsonKey(includeFromJson: false, includeToJson: false)
  bool get canLoadMore => totalRecord > currentPage * currentSize;

  factory PaginationMetaDTO.fromJson(Map<String, dynamic> json) =>
      _$PaginationMetaDTOFromJson(json);
}
