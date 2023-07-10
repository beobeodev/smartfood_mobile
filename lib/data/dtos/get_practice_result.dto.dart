import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/data/dtos/pagination/pagination_meta.dto.dart';
import 'package:smarthealthy/data/models/practice.model.dart';

part 'get_practice_result.dto.freezed.dart';
part 'get_practice_result.dto.g.dart';

@Freezed(toJson: false)
class GetPracticeResultDTO with _$GetPracticeResultDTO {
  const factory GetPracticeResultDTO({
    required final List<PracticeModel> data,
    required final PaginationMetaDTO meta,
  }) = _GetPracticeResultDTO;

  factory GetPracticeResultDTO.fromJson(Map<String, dynamic> json) =>
      _$GetPracticeResultDTOFromJson(json);
}
