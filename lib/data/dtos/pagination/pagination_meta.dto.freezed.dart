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
  int get totalRecord => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get currentSize => throw _privateConstructorUsedError;

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
  $Res call({int totalRecord, int currentPage, int currentSize});
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
    Object? totalRecord = null,
    Object? currentPage = null,
    Object? currentSize = null,
  }) {
    return _then(_value.copyWith(
      totalRecord: null == totalRecord
          ? _value.totalRecord
          : totalRecord // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      currentSize: null == currentSize
          ? _value.currentSize
          : currentSize // ignore: cast_nullable_to_non_nullable
              as int,
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
  $Res call({int totalRecord, int currentPage, int currentSize});
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
    Object? totalRecord = null,
    Object? currentPage = null,
    Object? currentSize = null,
  }) {
    return _then(_$_PaginationMetaDTO(
      totalRecord: null == totalRecord
          ? _value.totalRecord
          : totalRecord // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      currentSize: null == currentSize
          ? _value.currentSize
          : currentSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_PaginationMetaDTO extends _PaginationMetaDTO {
  _$_PaginationMetaDTO(
      {required this.totalRecord,
      required this.currentPage,
      required this.currentSize})
      : super._();

  factory _$_PaginationMetaDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PaginationMetaDTOFromJson(json);

  @override
  final int totalRecord;
  @override
  final int currentPage;
  @override
  final int currentSize;

  @override
  String toString() {
    return 'PaginationMetaDTO(totalRecord: $totalRecord, currentPage: $currentPage, currentSize: $currentSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginationMetaDTO &&
            (identical(other.totalRecord, totalRecord) ||
                other.totalRecord == totalRecord) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.currentSize, currentSize) ||
                other.currentSize == currentSize));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, totalRecord, currentPage, currentSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginationMetaDTOCopyWith<_$_PaginationMetaDTO> get copyWith =>
      __$$_PaginationMetaDTOCopyWithImpl<_$_PaginationMetaDTO>(
          this, _$identity);
}

abstract class _PaginationMetaDTO extends PaginationMetaDTO {
  factory _PaginationMetaDTO(
      {required final int totalRecord,
      required final int currentPage,
      required final int currentSize}) = _$_PaginationMetaDTO;
  _PaginationMetaDTO._() : super._();

  factory _PaginationMetaDTO.fromJson(Map<String, dynamic> json) =
      _$_PaginationMetaDTO.fromJson;

  @override
  int get totalRecord;
  @override
  int get currentPage;
  @override
  int get currentSize;
  @override
  @JsonKey(ignore: true)
  _$$_PaginationMetaDTOCopyWith<_$_PaginationMetaDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
