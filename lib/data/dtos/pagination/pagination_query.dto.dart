import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/common/constants/enums/sort_type.enum.dart';
import 'package:smarthealthy/data/dtos/sort.dto.dart';

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
    @Default(50) int limit,
    @SortByConverter() List<SortDTO>? sortBy,
    List<String>? filter,
    String? search,
  }) = _PaginationQueryDTO;
}

class SortByConverter implements JsonConverter<List<SortDTO>?, List<String>?> {
  const SortByConverter();

  @override
  List<SortDTO>? fromJson(List<String>? json) {
    return json == null ? null : [SortDTO(json[0], SortType.ASC)];
  }

  @override
  List<String>? toJson(List<SortDTO>? object) {
    return object?.map((e) => e.toString()).toList();
  }
}
