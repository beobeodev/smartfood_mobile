import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/common/utils/json_time_converter.util.dart';

part 'add_practice.dto.freezed.dart';
part 'add_practice.dto.g.dart';

@Freezed(fromJson: false, toJson: true)
class AddPracticeDTO with _$AddPracticeDTO {
  factory AddPracticeDTO({
    @JsonKey(includeFromJson: false, includeToJson: false)
    @JsonTimeConverter()
        required DateTime date,
    required String exerciseId,
    required int practiceDuration,
  }) = _AddPracticeDTO;
}
