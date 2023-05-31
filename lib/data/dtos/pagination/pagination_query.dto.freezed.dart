// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_query.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaginationQueryDTO {
  int get page => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  @SortByConverter()
  List<SortDTO>? get sortBy => throw _privateConstructorUsedError;
  List<String>? get filter => throw _privateConstructorUsedError;
  String? get search => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationQueryDTOCopyWith<PaginationQueryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationQueryDTOCopyWith<$Res> {
  factory $PaginationQueryDTOCopyWith(
          PaginationQueryDTO value, $Res Function(PaginationQueryDTO) then) =
      _$PaginationQueryDTOCopyWithImpl<$Res, PaginationQueryDTO>;
  @useResult
  $Res call(
      {int page,
      int limit,
      @SortByConverter() List<SortDTO>? sortBy,
      List<String>? filter,
      String? search});
}

/// @nodoc
class _$PaginationQueryDTOCopyWithImpl<$Res, $Val extends PaginationQueryDTO>
    implements $PaginationQueryDTOCopyWith<$Res> {
  _$PaginationQueryDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? limit = null,
    Object? sortBy = freezed,
    Object? filter = freezed,
    Object? search = freezed,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as List<SortDTO>?,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaginationQueryDTOCopyWith<$Res>
    implements $PaginationQueryDTOCopyWith<$Res> {
  factory _$$_PaginationQueryDTOCopyWith(_$_PaginationQueryDTO value,
          $Res Function(_$_PaginationQueryDTO) then) =
      __$$_PaginationQueryDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      int limit,
      @SortByConverter() List<SortDTO>? sortBy,
      List<String>? filter,
      String? search});
}

/// @nodoc
class __$$_PaginationQueryDTOCopyWithImpl<$Res>
    extends _$PaginationQueryDTOCopyWithImpl<$Res, _$_PaginationQueryDTO>
    implements _$$_PaginationQueryDTOCopyWith<$Res> {
  __$$_PaginationQueryDTOCopyWithImpl(
      _$_PaginationQueryDTO _value, $Res Function(_$_PaginationQueryDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? limit = null,
    Object? sortBy = freezed,
    Object? filter = freezed,
    Object? search = freezed,
  }) {
    return _then(_$_PaginationQueryDTO(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      sortBy: freezed == sortBy
          ? _value._sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as List<SortDTO>?,
      filter: freezed == filter
          ? _value._filter
          : filter // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    explicitToJson: true, createFactory: false, includeIfNull: false)
class _$_PaginationQueryDTO implements _PaginationQueryDTO {
  const _$_PaginationQueryDTO(
      {this.page = 1,
      this.limit = 50,
      @SortByConverter() final List<SortDTO>? sortBy,
      final List<String>? filter,
      this.search})
      : _sortBy = sortBy,
        _filter = filter;

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int limit;
  final List<SortDTO>? _sortBy;
  @override
  @SortByConverter()
  List<SortDTO>? get sortBy {
    final value = _sortBy;
    if (value == null) return null;
    if (_sortBy is EqualUnmodifiableListView) return _sortBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _filter;
  @override
  List<String>? get filter {
    final value = _filter;
    if (value == null) return null;
    if (_filter is EqualUnmodifiableListView) return _filter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? search;

  @override
  String toString() {
    return 'PaginationQueryDTO(page: $page, limit: $limit, sortBy: $sortBy, filter: $filter, search: $search)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginationQueryDTO &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            const DeepCollectionEquality().equals(other._sortBy, _sortBy) &&
            const DeepCollectionEquality().equals(other._filter, _filter) &&
            (identical(other.search, search) || other.search == search));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      page,
      limit,
      const DeepCollectionEquality().hash(_sortBy),
      const DeepCollectionEquality().hash(_filter),
      search);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginationQueryDTOCopyWith<_$_PaginationQueryDTO> get copyWith =>
      __$$_PaginationQueryDTOCopyWithImpl<_$_PaginationQueryDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaginationQueryDTOToJson(
      this,
    );
  }
}

abstract class _PaginationQueryDTO implements PaginationQueryDTO {
  const factory _PaginationQueryDTO(
      {final int page,
      final int limit,
      @SortByConverter() final List<SortDTO>? sortBy,
      final List<String>? filter,
      final String? search}) = _$_PaginationQueryDTO;

  @override
  int get page;
  @override
  int get limit;
  @override
  @SortByConverter()
  List<SortDTO>? get sortBy;
  @override
  List<String>? get filter;
  @override
  String? get search;
  @override
  @JsonKey(ignore: true)
  _$$_PaginationQueryDTOCopyWith<_$_PaginationQueryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
