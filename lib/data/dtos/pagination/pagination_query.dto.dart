import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_query.dto.freezed.dart';
part 'pagination_query.dto.g.dart';

@Freezed(toJson: true)
class PaginationQueryDTO with _$PaginationQueryDTO {
  @JsonSerializable(
    explicitToJson: true,
    createFactory: false,
    includeIfNull: false,
  )
  const factory PaginationQueryDTO({
    @Default(1) int page,
    @Default(50) int size,
    List<String>? sort,
    List<String>? filter,
    String? search,
  }) = _PaginationQueryDTO;
}
