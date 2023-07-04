// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MealModel _$MealModelFromJson(Map<String, dynamic> json) {
  return _MealModel.fromJson(json);
}

/// @nodoc
mixin _$MealModel {
  String get id => throw _privateConstructorUsedError;
  RecipeModel get recipe => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MealModelCopyWith<MealModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealModelCopyWith<$Res> {
  factory $MealModelCopyWith(MealModel value, $Res Function(MealModel) then) =
      _$MealModelCopyWithImpl<$Res, MealModel>;
  @useResult
  $Res call({String id, RecipeModel recipe});

  $RecipeModelCopyWith<$Res> get recipe;
}

/// @nodoc
class _$MealModelCopyWithImpl<$Res, $Val extends MealModel>
    implements $MealModelCopyWith<$Res> {
  _$MealModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? recipe = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      recipe: null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as RecipeModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RecipeModelCopyWith<$Res> get recipe {
    return $RecipeModelCopyWith<$Res>(_value.recipe, (value) {
      return _then(_value.copyWith(recipe: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MealModelCopyWith<$Res> implements $MealModelCopyWith<$Res> {
  factory _$$_MealModelCopyWith(
          _$_MealModel value, $Res Function(_$_MealModel) then) =
      __$$_MealModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, RecipeModel recipe});

  @override
  $RecipeModelCopyWith<$Res> get recipe;
}

/// @nodoc
class __$$_MealModelCopyWithImpl<$Res>
    extends _$MealModelCopyWithImpl<$Res, _$_MealModel>
    implements _$$_MealModelCopyWith<$Res> {
  __$$_MealModelCopyWithImpl(
      _$_MealModel _value, $Res Function(_$_MealModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? recipe = null,
  }) {
    return _then(_$_MealModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      recipe: null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as RecipeModel,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MealModel implements _MealModel {
  _$_MealModel({required this.id, required this.recipe});

  factory _$_MealModel.fromJson(Map<String, dynamic> json) =>
      _$$_MealModelFromJson(json);

  @override
  final String id;
  @override
  final RecipeModel recipe;

  @override
  String toString() {
    return 'MealModel(id: $id, recipe: $recipe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MealModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.recipe, recipe) || other.recipe == recipe));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, recipe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MealModelCopyWith<_$_MealModel> get copyWith =>
      __$$_MealModelCopyWithImpl<_$_MealModel>(this, _$identity);
}

abstract class _MealModel implements MealModel {
  factory _MealModel(
      {required final String id,
      required final RecipeModel recipe}) = _$_MealModel;

  factory _MealModel.fromJson(Map<String, dynamic> json) =
      _$_MealModel.fromJson;

  @override
  String get id;
  @override
  RecipeModel get recipe;
  @override
  @JsonKey(ignore: true)
  _$$_MealModelCopyWith<_$_MealModel> get copyWith =>
      throw _privateConstructorUsedError;
}
