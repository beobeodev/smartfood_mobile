// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quantification.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuantificationModel _$QuantificationModelFromJson(Map<String, dynamic> json) {
  return _QuantificationModel.fromJson(json);
}

/// @nodoc
mixin _$QuantificationModel {
  String get id => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  IngredientModel get ingredient => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuantificationModelCopyWith<QuantificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuantificationModelCopyWith<$Res> {
  factory $QuantificationModelCopyWith(
          QuantificationModel value, $Res Function(QuantificationModel) then) =
      _$QuantificationModelCopyWithImpl<$Res, QuantificationModel>;
  @useResult
  $Res call({String id, String value, String unit, IngredientModel ingredient});

  $IngredientModelCopyWith<$Res> get ingredient;
}

/// @nodoc
class _$QuantificationModelCopyWithImpl<$Res, $Val extends QuantificationModel>
    implements $QuantificationModelCopyWith<$Res> {
  _$QuantificationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
    Object? unit = null,
    Object? ingredient = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      ingredient: null == ingredient
          ? _value.ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as IngredientModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IngredientModelCopyWith<$Res> get ingredient {
    return $IngredientModelCopyWith<$Res>(_value.ingredient, (value) {
      return _then(_value.copyWith(ingredient: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_QuantificationModelCopyWith<$Res>
    implements $QuantificationModelCopyWith<$Res> {
  factory _$$_QuantificationModelCopyWith(_$_QuantificationModel value,
          $Res Function(_$_QuantificationModel) then) =
      __$$_QuantificationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String value, String unit, IngredientModel ingredient});

  @override
  $IngredientModelCopyWith<$Res> get ingredient;
}

/// @nodoc
class __$$_QuantificationModelCopyWithImpl<$Res>
    extends _$QuantificationModelCopyWithImpl<$Res, _$_QuantificationModel>
    implements _$$_QuantificationModelCopyWith<$Res> {
  __$$_QuantificationModelCopyWithImpl(_$_QuantificationModel _value,
      $Res Function(_$_QuantificationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
    Object? unit = null,
    Object? ingredient = null,
  }) {
    return _then(_$_QuantificationModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      ingredient: null == ingredient
          ? _value.ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as IngredientModel,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_QuantificationModel extends _QuantificationModel {
  _$_QuantificationModel(
      {required this.id,
      required this.value,
      required this.unit,
      required this.ingredient})
      : super._();

  factory _$_QuantificationModel.fromJson(Map<String, dynamic> json) =>
      _$$_QuantificationModelFromJson(json);

  @override
  final String id;
  @override
  final String value;
  @override
  final String unit;
  @override
  final IngredientModel ingredient;

  @override
  String toString() {
    return 'QuantificationModel(id: $id, value: $value, unit: $unit, ingredient: $ingredient)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuantificationModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.ingredient, ingredient) ||
                other.ingredient == ingredient));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, value, unit, ingredient);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuantificationModelCopyWith<_$_QuantificationModel> get copyWith =>
      __$$_QuantificationModelCopyWithImpl<_$_QuantificationModel>(
          this, _$identity);
}

abstract class _QuantificationModel extends QuantificationModel {
  factory _QuantificationModel(
      {required final String id,
      required final String value,
      required final String unit,
      required final IngredientModel ingredient}) = _$_QuantificationModel;
  _QuantificationModel._() : super._();

  factory _QuantificationModel.fromJson(Map<String, dynamic> json) =
      _$_QuantificationModel.fromJson;

  @override
  String get id;
  @override
  String get value;
  @override
  String get unit;
  @override
  IngredientModel get ingredient;
  @override
  @JsonKey(ignore: true)
  _$$_QuantificationModelCopyWith<_$_QuantificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
