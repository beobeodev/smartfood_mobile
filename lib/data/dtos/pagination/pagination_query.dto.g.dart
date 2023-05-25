// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_query.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$_PaginationQueryDTOToJson(
    _$_PaginationQueryDTO instance) {
  final val = <String, dynamic>{
    'page': instance.page,
    'size': instance.size,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sort', instance.sort);
  writeNotNull('filter', instance.filter);
  writeNotNull('search', instance.search);
  return val;
}
