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
  List<IngredientModel>? get ingredients => throw _privateConstructorUsedError;
  PaginationQueryDTO<dynamic> get pagination =>
      throw _privateConstructorUsedError;

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
  $Res call(
      {List<IngredientModel>? ingredients,
      PaginationQueryDTO<dynamic> pagination});

  $PaginationQueryDTOCopyWith<dynamic, $Res> get pagination;
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
    Object? ingredients = freezed,
    Object? pagination = null,
  }) {
    return _then(_value.copyWith(
      ingredients: freezed == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<IngredientModel>?,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationQueryDTO<dynamic>,
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
    implements $QueryRecipesDTOCopyWith<$Res> {
  factory _$$_QueryRecipesDTOCopyWith(
          _$_QueryRecipesDTO value, $Res Function(_$_QueryRecipesDTO) then) =
      __$$_QueryRecipesDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<IngredientModel>? ingredients,
      PaginationQueryDTO<dynamic> pagination});

  @override
  $PaginationQueryDTOCopyWith<dynamic, $Res> get pagination;
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
    Object? ingredients = freezed,
    Object? pagination = null,
  }) {
    return _then(_$_QueryRecipesDTO(
      ingredients: freezed == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<IngredientModel>?,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationQueryDTO<dynamic>,
    ));
  }
}

/// @nodoc

class _$_QueryRecipesDTO extends _QueryRecipesDTO {
  const _$_QueryRecipesDTO(
      {final List<IngredientModel>? ingredients, required this.pagination})
      : _ingredients = ingredients,
        super._();

  final List<IngredientModel>? _ingredients;
  @override
  List<IngredientModel>? get ingredients {
    final value = _ingredients;
    if (value == null) return null;
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PaginationQueryDTO<dynamic> pagination;

  @override
  String toString() {
    return 'QueryRecipesDTO(ingredients: $ingredients, pagination: $pagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QueryRecipesDTO &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_ingredients), pagination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueryRecipesDTOCopyWith<_$_QueryRecipesDTO> get copyWith =>
      __$$_QueryRecipesDTOCopyWithImpl<_$_QueryRecipesDTO>(this, _$identity);
}

abstract class _QueryRecipesDTO extends QueryRecipesDTO {
  const factory _QueryRecipesDTO(
          {final List<IngredientModel>? ingredients,
          required final PaginationQueryDTO<dynamic> pagination}) =
      _$_QueryRecipesDTO;
  const _QueryRecipesDTO._() : super._();

  @override
  List<IngredientModel>? get ingredients;
  @override
  PaginationQueryDTO<dynamic> get pagination;
  @override
  @JsonKey(ignore: true)
  _$$_QueryRecipesDTOCopyWith<_$_QueryRecipesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
