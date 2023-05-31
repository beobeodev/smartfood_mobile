// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_query.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$_PaginationQueryDTOToJson(
    _$_PaginationQueryDTO instance) {
  final val = <String, dynamic>{
    'page': instance.page,
    'limit': instance.limit,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sortBy', const SortByConverter().toJson(instance.sortBy));
  writeNotNull('filter', instance.filter);
  writeNotNull('search', instance.search);
  return val;
}
