import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_meta.dto.freezed.dart';
part 'pagination_meta.dto.g.dart';

@Freezed(toJson: false)
class PaginationMetaDTO with _$PaginationMetaDTO {
  const PaginationMetaDTO._();

  factory PaginationMetaDTO({
    required final int itemsPerPage,
    required final int totalItems,
    required final int currentPage,
    required final int totalPages,
    List<List<String>>? sortBy,
  }) = _PaginationMetaDTO;

  @JsonKey(includeFromJson: false, includeToJson: false)
  bool get canLoadMore => currentPage < totalPages;

  factory PaginationMetaDTO.fromJson(Map<String, dynamic> json) =>
      _$PaginationMetaDTOFromJson(json);
}
