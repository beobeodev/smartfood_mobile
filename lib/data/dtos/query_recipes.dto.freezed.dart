// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'query_recipes.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QueryRecipesDTO {
  List<String>? get ids => throw _privateConstructorUsedError;
  PaginationQueryDTO get pagination => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QueryRecipesDTOCopyWith<QueryRecipesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryRecipesDTOCopyWith<$Res> {
  factory $QueryRecipesDTOCopyWith(
          QueryRecipesDTO value, $Res Function(QueryRecipesDTO) then) =
      _$QueryRecipesDTOCopyWithImpl<$Res, QueryRecipesDTO>;
  @useResult
  $Res call({List<String>? ids, PaginationQueryDTO pagination});

  $PaginationQueryDTOCopyWith<$Res> get pagination;
}

/// @nodoc
class _$QueryRecipesDTOCopyWithImpl<$Res, $Val extends QueryRecipesDTO>
    implements $QueryRecipesDTOCopyWith<$Res> {
  _$QueryRecipesDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = freezed,
    Object? pagination = null,
  }) {
    return _then(_value.copyWith(
      ids: freezed == ids
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationQueryDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationQueryDTOCopyWith<$Res> get pagination {
    return $PaginationQueryDTOCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_QueryRecipesDTOCopyWith<$Res>
    implements $QueryRecipesDTOCopyWith<$Res> {
  factory _$$_QueryRecipesDTOCopyWith(
          _$_QueryRecipesDTO value, $Res Function(_$_QueryRecipesDTO) then) =
      __$$_QueryRecipesDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String>? ids, PaginationQueryDTO pagination});

  @override
  $PaginationQueryDTOCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$_QueryRecipesDTOCopyWithImpl<$Res>
    extends _$QueryRecipesDTOCopyWithImpl<$Res, _$_QueryRecipesDTO>
    implements _$$_QueryRecipesDTOCopyWith<$Res> {
  __$$_QueryRecipesDTOCopyWithImpl(
      _$_QueryRecipesDTO _value, $Res Function(_$_QueryRecipesDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = freezed,
    Object? pagination = null,
  }) {
    return _then(_$_QueryRecipesDTO(
      ids: freezed == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationQueryDTO,
    ));
  }
}

/// @nodoc

class _$_QueryRecipesDTO implements _QueryRecipesDTO {
  const _$_QueryRecipesDTO({final List<String>? ids, required this.pagination})
      : _ids = ids;

  final List<String>? _ids;
  @override
  List<String>? get ids {
    final value = _ids;
    if (value == null) return null;
    if (_ids is EqualUnmodifiableListView) return _ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PaginationQueryDTO pagination;

  @override
  String toString() {
    return 'QueryRecipesDTO(ids: $ids, pagination: $pagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QueryRecipesDTO &&
            const DeepCollectionEquality().equals(other._ids, _ids) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_ids), pagination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueryRecipesDTOCopyWith<_$_QueryRecipesDTO> get copyWith =>
      __$$_QueryRecipesDTOCopyWithImpl<_$_QueryRecipesDTO>(this, _$identity);
}

abstract class _QueryRecipesDTO implements QueryRecipesDTO {
  const factory _QueryRecipesDTO(
      {final List<String>? ids,
      required final PaginationQueryDTO pagination}) = _$_QueryRecipesDTO;

  @override
  List<String>? get ids;
  @override
  PaginationQueryDTO get pagination;
  @override
  @JsonKey(ignore: true)
  _$$_QueryRecipesDTOCopyWith<_$_QueryRecipesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
