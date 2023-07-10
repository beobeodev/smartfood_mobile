// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'query_meals.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QueryMealsDTO {
  PaginationQueryDTO<dynamic> get pagination =>
      throw _privateConstructorUsedError;
  bool get getNutrition => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QueryMealsDTOCopyWith<QueryMealsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryMealsDTOCopyWith<$Res> {
  factory $QueryMealsDTOCopyWith(
          QueryMealsDTO value, $Res Function(QueryMealsDTO) then) =
      _$QueryMealsDTOCopyWithImpl<$Res, QueryMealsDTO>;
  @useResult
  $Res call({PaginationQueryDTO<dynamic> pagination, bool getNutrition});

  $PaginationQueryDTOCopyWith<dynamic, $Res> get pagination;
}

/// @nodoc
class _$QueryMealsDTOCopyWithImpl<$Res, $Val extends QueryMealsDTO>
    implements $QueryMealsDTOCopyWith<$Res> {
  _$QueryMealsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = null,
    Object? getNutrition = null,
  }) {
    return _then(_value.copyWith(
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationQueryDTO<dynamic>,
      getNutrition: null == getNutrition
          ? _value.getNutrition
          : getNutrition // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationQueryDTOCopyWith<dynamic, $Res> get pagination {
    return $PaginationQueryDTOCopyWith<dynamic, $Res>(_value.pagination,
        (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_QueryRecipesDTOCopyWith<$Res>
    implements $QueryMealsDTOCopyWith<$Res> {
  factory _$$_QueryRecipesDTOCopyWith(
          _$_QueryRecipesDTO value, $Res Function(_$_QueryRecipesDTO) then) =
      __$$_QueryRecipesDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaginationQueryDTO<dynamic> pagination, bool getNutrition});

  @override
  $PaginationQueryDTOCopyWith<dynamic, $Res> get pagination;
}

/// @nodoc
class __$$_QueryRecipesDTOCopyWithImpl<$Res>
    extends _$QueryMealsDTOCopyWithImpl<$Res, _$_QueryRecipesDTO>
    implements _$$_QueryRecipesDTOCopyWith<$Res> {
  __$$_QueryRecipesDTOCopyWithImpl(
      _$_QueryRecipesDTO _value, $Res Function(_$_QueryRecipesDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = null,
    Object? getNutrition = null,
  }) {
    return _then(_$_QueryRecipesDTO(
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationQueryDTO<dynamic>,
      getNutrition: null == getNutrition
          ? _value.getNutrition
          : getNutrition // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_QueryRecipesDTO extends _QueryRecipesDTO {
  const _$_QueryRecipesDTO({required this.pagination, this.getNutrition = true})
      : super._();

  @override
  final PaginationQueryDTO<dynamic> pagination;
  @override
  @JsonKey()
  final bool getNutrition;

  @override
  String toString() {
    return 'QueryMealsDTO(pagination: $pagination, getNutrition: $getNutrition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QueryRecipesDTO &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination) &&
            (identical(other.getNutrition, getNutrition) ||
                other.getNutrition == getNutrition));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pagination, getNutrition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueryRecipesDTOCopyWith<_$_QueryRecipesDTO> get copyWith =>
      __$$_QueryRecipesDTOCopyWithImpl<_$_QueryRecipesDTO>(this, _$identity);
}

abstract class _QueryRecipesDTO extends QueryMealsDTO {
  const factory _QueryRecipesDTO(
      {required final PaginationQueryDTO<dynamic> pagination,
      final bool getNutrition}) = _$_QueryRecipesDTO;
  const _QueryRecipesDTO._() : super._();

  @override
  PaginationQueryDTO<dynamic> get pagination;
  @override
  bool get getNutrition;
  @override
  @JsonKey(ignore: true)
  _$$_QueryRecipesDTOCopyWith<_$_QueryRecipesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
