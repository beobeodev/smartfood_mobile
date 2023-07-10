// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_practice_result.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetPracticeResultDTO _$$_GetPracticeResultDTOFromJson(
        Map<String, dynamic> json) =>
    _$_GetPracticeResultDTO(
      data: (json['data'] as List<dynamic>)
          .map((e) => PracticeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: PaginationMetaDTO.fromJson(json['meta'] as Map<String, dynamic>),
    );
