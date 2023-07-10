// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_practice_result.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetPracticeResultDTO _$GetPracticeResultDTOFromJson(Map<String, dynamic> json) {
  return _GetPracticeResultDTO.fromJson(json);
}

/// @nodoc
mixin _$GetPracticeResultDTO {
  List<PracticeModel> get data => throw _privateConstructorUsedError;
  PaginationMetaDTO get meta => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetPracticeResultDTOCopyWith<GetPracticeResultDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPracticeResultDTOCopyWith<$Res> {
  factory $GetPracticeResultDTOCopyWith(GetPracticeResultDTO value,
          $Res Function(GetPracticeResultDTO) then) =
      _$GetPracticeResultDTOCopyWithImpl<$Res, GetPracticeResultDTO>;
  @useResult
  $Res call({List<PracticeModel> data, PaginationMetaDTO meta});

  $PaginationMetaDTOCopyWith<$Res> get meta;
}

/// @nodoc
class _$GetPracticeResultDTOCopyWithImpl<$Res,
        $Val extends GetPracticeResultDTO>
    implements $GetPracticeResultDTOCopyWith<$Res> {
  _$GetPracticeResultDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PracticeModel>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as PaginationMetaDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationMetaDTOCopyWith<$Res> get meta {
    return $PaginationMetaDTOCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GetPracticeResultDTOCopyWith<$Res>
    implements $GetPracticeResultDTOCopyWith<$Res> {
  factory _$$_GetPracticeResultDTOCopyWith(_$_GetPracticeResultDTO value,
          $Res Function(_$_GetPracticeResultDTO) then) =
      __$$_GetPracticeResultDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PracticeModel> data, PaginationMetaDTO meta});

  @override
  $PaginationMetaDTOCopyWith<$Res> get meta;
}

/// @nodoc
class __$$_GetPracticeResultDTOCopyWithImpl<$Res>
    extends _$GetPracticeResultDTOCopyWithImpl<$Res, _$_GetPracticeResultDTO>
    implements _$$_GetPracticeResultDTOCopyWith<$Res> {
  __$$_GetPracticeResultDTOCopyWithImpl(_$_GetPracticeResultDTO _value,
      $Res Function(_$_GetPracticeResultDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = null,
  }) {
    return _then(_$_GetPracticeResultDTO(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PracticeModel>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as PaginationMetaDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_GetPracticeResultDTO implements _GetPracticeResultDTO {
  const _$_GetPracticeResultDTO(
      {required final List<PracticeModel> data, required this.meta})
      : _data = data;

  factory _$_GetPracticeResultDTO.fromJson(Map<String, dynamic> json) =>
      _$$_GetPracticeResultDTOFromJson(json);

  final List<PracticeModel> _data;
  @override
  List<PracticeModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final PaginationMetaDTO meta;

  @override
  String toString() {
    return 'GetPracticeResultDTO(data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPracticeResultDTO &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetPracticeResultDTOCopyWith<_$_GetPracticeResultDTO> get copyWith =>
      __$$_GetPracticeResultDTOCopyWithImpl<_$_GetPracticeResultDTO>(
          this, _$identity);
}

abstract class _GetPracticeResultDTO implements GetPracticeResultDTO {
  const factory _GetPracticeResultDTO(
      {required final List<PracticeModel> data,
      required final PaginationMetaDTO meta}) = _$_GetPracticeResultDTO;

  factory _GetPracticeResultDTO.fromJson(Map<String, dynamic> json) =
      _$_GetPracticeResultDTO.fromJson;

  @override
  List<PracticeModel> get data;
  @override
  PaginationMetaDTO get meta;
  @override
  @JsonKey(ignore: true)
  _$$_GetPracticeResultDTOCopyWith<_$_GetPracticeResultDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
