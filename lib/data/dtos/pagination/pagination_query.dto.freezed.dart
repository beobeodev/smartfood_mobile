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
mixin _$PaginationQueryDTO<T> {
  int get page => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  List<SortDTO>? get sortBy => throw _privateConstructorUsedError;
  List<T>? get filter => throw _privateConstructorUsedError;
  String? get search => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginationQueryDTOCopyWith<T, PaginationQueryDTO<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationQueryDTOCopyWith<T, $Res> {
  factory $PaginationQueryDTOCopyWith(PaginationQueryDTO<T> value,
          $Res Function(PaginationQueryDTO<T>) then) =
      _$PaginationQueryDTOCopyWithImpl<T, $Res, PaginationQueryDTO<T>>;
  @useResult
  $Res call(
      {int page,
      int limit,
      List<SortDTO>? sortBy,
      List<T>? filter,
      String? search});
}

/// @nodoc
class _$PaginationQueryDTOCopyWithImpl<T, $Res,
        $Val extends PaginationQueryDTO<T>>
    implements $PaginationQueryDTOCopyWith<T, $Res> {
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
              as List<T>?,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaginationQueryDTOCopyWith<T, $Res>
    implements $PaginationQueryDTOCopyWith<T, $Res> {
  factory _$$_PaginationQueryDTOCopyWith(_$_PaginationQueryDTO<T> value,
          $Res Function(_$_PaginationQueryDTO<T>) then) =
      __$$_PaginationQueryDTOCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {int page,
      int limit,
      List<SortDTO>? sortBy,
      List<T>? filter,
      String? search});
}

/// @nodoc
class __$$_PaginationQueryDTOCopyWithImpl<T, $Res>
    extends _$PaginationQueryDTOCopyWithImpl<T, $Res, _$_PaginationQueryDTO<T>>
    implements _$$_PaginationQueryDTOCopyWith<T, $Res> {
  __$$_PaginationQueryDTOCopyWithImpl(_$_PaginationQueryDTO<T> _value,
      $Res Function(_$_PaginationQueryDTO<T>) _then)
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
    return _then(_$_PaginationQueryDTO<T>(
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
              as List<T>?,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PaginationQueryDTO<T> extends _PaginationQueryDTO<T> {
  const _$_PaginationQueryDTO(
      {this.page = 1,
      this.limit = 50,
      final List<SortDTO>? sortBy,
      final List<T>? filter,
      this.search})
      : assert(null is T || T == RecipeFilterDTO,
            'Type of filter model in pagination can be null or RecipeFilterDTO'),
        _sortBy = sortBy,
        _filter = filter,
        super._();

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int limit;
  final List<SortDTO>? _sortBy;
  @override
  List<SortDTO>? get sortBy {
    final value = _sortBy;
    if (value == null) return null;
    if (_sortBy is EqualUnmodifiableListView) return _sortBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<T>? _filter;
  @override
  List<T>? get filter {
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
    return 'PaginationQueryDTO<$T>(page: $page, limit: $limit, sortBy: $sortBy, filter: $filter, search: $search)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginationQueryDTO<T> &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            const DeepCollectionEquality().equals(other._sortBy, _sortBy) &&
            const DeepCollectionEquality().equals(other._filter, _filter) &&
            (identical(other.search, search) || other.search == search));
  }

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
  _$$_PaginationQueryDTOCopyWith<T, _$_PaginationQueryDTO<T>> get copyWith =>
      __$$_PaginationQueryDTOCopyWithImpl<T, _$_PaginationQueryDTO<T>>(
          this, _$identity);
}

abstract class _PaginationQueryDTO<T> extends PaginationQueryDTO<T> {
  const factory _PaginationQueryDTO(
      {final int page,
      final int limit,
      final List<SortDTO>? sortBy,
      final List<T>? filter,
      final String? search}) = _$_PaginationQueryDTO<T>;
  const _PaginationQueryDTO._() : super._();

  @override
  int get page;
  @override
  int get limit;
  @override
  List<SortDTO>? get sortBy;
  @override
  List<T>? get filter;
  @override
  String? get search;
  @override
  @JsonKey(ignore: true)
  _$$_PaginationQueryDTOCopyWith<T, _$_PaginationQueryDTO<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
