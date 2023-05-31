// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_ingredient.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetIngredientDTO _$GetIngredientDTOFromJson(Map<String, dynamic> json) {
  return _GetIngredientDTO.fromJson(json);
}

/// @nodoc
mixin _$GetIngredientDTO {
  List<IngredientModel> get data => throw _privateConstructorUsedError;
  PaginationMetaDTO get meta => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetIngredientDTOCopyWith<GetIngredientDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetIngredientDTOCopyWith<$Res> {
  factory $GetIngredientDTOCopyWith(
          GetIngredientDTO value, $Res Function(GetIngredientDTO) then) =
      _$GetIngredientDTOCopyWithImpl<$Res, GetIngredientDTO>;
  @useResult
  $Res call({List<IngredientModel> data, PaginationMetaDTO meta});

  $PaginationMetaDTOCopyWith<$Res> get meta;
}

/// @nodoc
class _$GetIngredientDTOCopyWithImpl<$Res, $Val extends GetIngredientDTO>
    implements $GetIngredientDTOCopyWith<$Res> {
  _$GetIngredientDTOCopyWithImpl(this._value, this._then);

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
              as List<IngredientModel>,
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
abstract class _$$_GetIngredientDTOCopyWith<$Res>
    implements $GetIngredientDTOCopyWith<$Res> {
  factory _$$_GetIngredientDTOCopyWith(
          _$_GetIngredientDTO value, $Res Function(_$_GetIngredientDTO) then) =
      __$$_GetIngredientDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<IngredientModel> data, PaginationMetaDTO meta});

  @override
  $PaginationMetaDTOCopyWith<$Res> get meta;
}

/// @nodoc
class __$$_GetIngredientDTOCopyWithImpl<$Res>
    extends _$GetIngredientDTOCopyWithImpl<$Res, _$_GetIngredientDTO>
    implements _$$_GetIngredientDTOCopyWith<$Res> {
  __$$_GetIngredientDTOCopyWithImpl(
      _$_GetIngredientDTO _value, $Res Function(_$_GetIngredientDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = null,
  }) {
    return _then(_$_GetIngredientDTO(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<IngredientModel>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as PaginationMetaDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_GetIngredientDTO implements _GetIngredientDTO {
  const _$_GetIngredientDTO(
      {required final List<IngredientModel> data, required this.meta})
      : _data = data;

  factory _$_GetIngredientDTO.fromJson(Map<String, dynamic> json) =>
      _$$_GetIngredientDTOFromJson(json);

  final List<IngredientModel> _data;
  @override
  List<IngredientModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final PaginationMetaDTO meta;

  @override
  String toString() {
    return 'GetIngredientDTO(data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetIngredientDTO &&
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
  _$$_GetIngredientDTOCopyWith<_$_GetIngredientDTO> get copyWith =>
      __$$_GetIngredientDTOCopyWithImpl<_$_GetIngredientDTO>(this, _$identity);
}

abstract class _GetIngredientDTO implements GetIngredientDTO {
  const factory _GetIngredientDTO(
      {required final List<IngredientModel> data,
      required final PaginationMetaDTO meta}) = _$_GetIngredientDTO;

  factory _GetIngredientDTO.fromJson(Map<String, dynamic> json) =
      _$_GetIngredientDTO.fromJson;

  @override
  List<IngredientModel> get data;
  @override
  PaginationMetaDTO get meta;
  @override
  @JsonKey(ignore: true)
  _$$_GetIngredientDTOCopyWith<_$_GetIngredientDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
