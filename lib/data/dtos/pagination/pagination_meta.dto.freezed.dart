// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_meta.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginationMetaDTO _$PaginationMetaDTOFromJson(Map<String, dynamic> json) {
  return _PaginationMetaDTO.fromJson(json);
}

/// @nodoc
mixin _$PaginationMetaDTO {
  int get itemsPerPage => throw _privateConstructorUsedError;
  int get totalItems => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  List<List<String>>? get sortBy => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginationMetaDTOCopyWith<PaginationMetaDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationMetaDTOCopyWith<$Res> {
  factory $PaginationMetaDTOCopyWith(
          PaginationMetaDTO value, $Res Function(PaginationMetaDTO) then) =
      _$PaginationMetaDTOCopyWithImpl<$Res, PaginationMetaDTO>;
  @useResult
  $Res call(
      {int itemsPerPage,
      int totalItems,
      int currentPage,
      int totalPages,
      List<List<String>>? sortBy});
}

/// @nodoc
class _$PaginationMetaDTOCopyWithImpl<$Res, $Val extends PaginationMetaDTO>
    implements $PaginationMetaDTOCopyWith<$Res> {
  _$PaginationMetaDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemsPerPage = null,
    Object? totalItems = null,
    Object? currentPage = null,
    Object? totalPages = null,
    Object? sortBy = freezed,
  }) {
    return _then(_value.copyWith(
      itemsPerPage: null == itemsPerPage
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as List<List<String>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaginationMetaDTOCopyWith<$Res>
    implements $PaginationMetaDTOCopyWith<$Res> {
  factory _$$_PaginationMetaDTOCopyWith(_$_PaginationMetaDTO value,
          $Res Function(_$_PaginationMetaDTO) then) =
      __$$_PaginationMetaDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int itemsPerPage,
      int totalItems,
      int currentPage,
      int totalPages,
      List<List<String>>? sortBy});
}

/// @nodoc
class __$$_PaginationMetaDTOCopyWithImpl<$Res>
    extends _$PaginationMetaDTOCopyWithImpl<$Res, _$_PaginationMetaDTO>
    implements _$$_PaginationMetaDTOCopyWith<$Res> {
  __$$_PaginationMetaDTOCopyWithImpl(
      _$_PaginationMetaDTO _value, $Res Function(_$_PaginationMetaDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemsPerPage = null,
    Object? totalItems = null,
    Object? currentPage = null,
    Object? totalPages = null,
    Object? sortBy = freezed,
  }) {
    return _then(_$_PaginationMetaDTO(
      itemsPerPage: null == itemsPerPage
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      sortBy: freezed == sortBy
          ? _value._sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as List<List<String>>?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_PaginationMetaDTO extends _PaginationMetaDTO {
  _$_PaginationMetaDTO(
      {required this.itemsPerPage,
      required this.totalItems,
      required this.currentPage,
      required this.totalPages,
      final List<List<String>>? sortBy})
      : _sortBy = sortBy,
        super._();

  factory _$_PaginationMetaDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PaginationMetaDTOFromJson(json);

  @override
  final int itemsPerPage;
  @override
  final int totalItems;
  @override
  final int currentPage;
  @override
  final int totalPages;
  final List<List<String>>? _sortBy;
  @override
  List<List<String>>? get sortBy {
    final value = _sortBy;
    if (value == null) return null;
    if (_sortBy is EqualUnmodifiableListView) return _sortBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PaginationMetaDTO(itemsPerPage: $itemsPerPage, totalItems: $totalItems, currentPage: $currentPage, totalPages: $totalPages, sortBy: $sortBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginationMetaDTO &&
            (identical(other.itemsPerPage, itemsPerPage) ||
                other.itemsPerPage == itemsPerPage) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            const DeepCollectionEquality().equals(other._sortBy, _sortBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, itemsPerPage, totalItems,
      currentPage, totalPages, const DeepCollectionEquality().hash(_sortBy));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginationMetaDTOCopyWith<_$_PaginationMetaDTO> get copyWith =>
      __$$_PaginationMetaDTOCopyWithImpl<_$_PaginationMetaDTO>(
          this, _$identity);
}

abstract class _PaginationMetaDTO extends PaginationMetaDTO {
  factory _PaginationMetaDTO(
      {required final int itemsPerPage,
      required final int totalItems,
      required final int currentPage,
      required final int totalPages,
      final List<List<String>>? sortBy}) = _$_PaginationMetaDTO;
  _PaginationMetaDTO._() : super._();

  factory _PaginationMetaDTO.fromJson(Map<String, dynamic> json) =
      _$_PaginationMetaDTO.fromJson;

  @override
  int get itemsPerPage;
  @override
  int get totalItems;
  @override
  int get currentPage;
  @override
  int get totalPages;
  @override
  List<List<String>>? get sortBy;
  @override
  @JsonKey(ignore: true)
  _$$_PaginationMetaDTOCopyWith<_$_PaginationMetaDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
