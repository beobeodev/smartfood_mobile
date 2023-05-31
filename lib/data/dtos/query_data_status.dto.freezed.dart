// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'query_data_status.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QueryDataStatusDTO {
  QueryStatus get status => throw _privateConstructorUsedError;
  QueryType get type => throw _privateConstructorUsedError;
  QueryErrorType? get errorType => throw _privateConstructorUsedError;
  bool get canLoadMore => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QueryDataStatusDTOCopyWith<QueryDataStatusDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryDataStatusDTOCopyWith<$Res> {
  factory $QueryDataStatusDTOCopyWith(
          QueryDataStatusDTO value, $Res Function(QueryDataStatusDTO) then) =
      _$QueryDataStatusDTOCopyWithImpl<$Res, QueryDataStatusDTO>;
  @useResult
  $Res call(
      {QueryStatus status,
      QueryType type,
      QueryErrorType? errorType,
      bool canLoadMore});
}

/// @nodoc
class _$QueryDataStatusDTOCopyWithImpl<$Res, $Val extends QueryDataStatusDTO>
    implements $QueryDataStatusDTOCopyWith<$Res> {
  _$QueryDataStatusDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? type = null,
    Object? errorType = freezed,
    Object? canLoadMore = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QueryStatus,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as QueryType,
      errorType: freezed == errorType
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as QueryErrorType?,
      canLoadMore: null == canLoadMore
          ? _value.canLoadMore
          : canLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QueryDataStatusDTOCopyWith<$Res>
    implements $QueryDataStatusDTOCopyWith<$Res> {
  factory _$$_QueryDataStatusDTOCopyWith(_$_QueryDataStatusDTO value,
          $Res Function(_$_QueryDataStatusDTO) then) =
      __$$_QueryDataStatusDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {QueryStatus status,
      QueryType type,
      QueryErrorType? errorType,
      bool canLoadMore});
}

/// @nodoc
class __$$_QueryDataStatusDTOCopyWithImpl<$Res>
    extends _$QueryDataStatusDTOCopyWithImpl<$Res, _$_QueryDataStatusDTO>
    implements _$$_QueryDataStatusDTOCopyWith<$Res> {
  __$$_QueryDataStatusDTOCopyWithImpl(
      _$_QueryDataStatusDTO _value, $Res Function(_$_QueryDataStatusDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? type = null,
    Object? errorType = freezed,
    Object? canLoadMore = null,
  }) {
    return _then(_$_QueryDataStatusDTO(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QueryStatus,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as QueryType,
      errorType: freezed == errorType
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as QueryErrorType?,
      canLoadMore: null == canLoadMore
          ? _value.canLoadMore
          : canLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_QueryDataStatusDTO implements _QueryDataStatusDTO {
  const _$_QueryDataStatusDTO(
      {required this.status,
      this.type = QueryType.initial,
      this.errorType,
      this.canLoadMore = false});

  @override
  final QueryStatus status;
  @override
  @JsonKey()
  final QueryType type;
  @override
  final QueryErrorType? errorType;
  @override
  @JsonKey()
  final bool canLoadMore;

  @override
  String toString() {
    return 'QueryDataStatusDTO(status: $status, type: $type, errorType: $errorType, canLoadMore: $canLoadMore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QueryDataStatusDTO &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.errorType, errorType) ||
                other.errorType == errorType) &&
            (identical(other.canLoadMore, canLoadMore) ||
                other.canLoadMore == canLoadMore));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, type, errorType, canLoadMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueryDataStatusDTOCopyWith<_$_QueryDataStatusDTO> get copyWith =>
      __$$_QueryDataStatusDTOCopyWithImpl<_$_QueryDataStatusDTO>(
          this, _$identity);
}

abstract class _QueryDataStatusDTO implements QueryDataStatusDTO {
  const factory _QueryDataStatusDTO(
      {required final QueryStatus status,
      final QueryType type,
      final QueryErrorType? errorType,
      final bool canLoadMore}) = _$_QueryDataStatusDTO;

  @override
  QueryStatus get status;
  @override
  QueryType get type;
  @override
  QueryErrorType? get errorType;
  @override
  bool get canLoadMore;
  @override
  @JsonKey(ignore: true)
  _$$_QueryDataStatusDTOCopyWith<_$_QueryDataStatusDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
