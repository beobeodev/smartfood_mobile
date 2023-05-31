// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_meta.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaginationMetaDTO _$$_PaginationMetaDTOFromJson(Map<String, dynamic> json) =>
    _$_PaginationMetaDTO(
      itemsPerPage: json['itemsPerPage'] as int,
      totalItems: json['totalItems'] as int,
      currentPage: json['currentPage'] as int,
      totalPages: json['totalPages'] as int,
      sortBy: (json['sortBy'] as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>).map((e) => e as String).toList())
          .toList(),
    );
