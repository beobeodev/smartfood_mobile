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
  MealType get type => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get calorie => throw _privateConstructorUsedError;
  int get carbs => throw _privateConstructorUsedError;
  int get protein => throw _privateConstructorUsedError;
  int get fat => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MealModelCopyWith<MealModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealModelCopyWith<$Res> {
  factory $MealModelCopyWith(MealModel value, $Res Function(MealModel) then) =
      _$MealModelCopyWithImpl<$Res, MealModel>;
  @useResult
  $Res call(
      {MealType type,
      String name,
      int calorie,
      int carbs,
      int protein,
      int fat});
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
    Object? type = null,
    Object? name = null,
    Object? calorie = null,
    Object? carbs = null,
    Object? protein = null,
    Object? fat = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MealType,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      calorie: null == calorie
          ? _value.calorie
          : calorie // ignore: cast_nullable_to_non_nullable
              as int,
      carbs: null == carbs
          ? _value.carbs
          : carbs // ignore: cast_nullable_to_non_nullable
              as int,
      protein: null == protein
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as int,
      fat: null == fat
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MealModelCopyWith<$Res> implements $MealModelCopyWith<$Res> {
  factory _$$_MealModelCopyWith(
          _$_MealModel value, $Res Function(_$_MealModel) then) =
      __$$_MealModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MealType type,
      String name,
      int calorie,
      int carbs,
      int protein,
      int fat});
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
    Object? type = null,
    Object? name = null,
    Object? calorie = null,
    Object? carbs = null,
    Object? protein = null,
    Object? fat = null,
  }) {
    return _then(_$_MealModel(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MealType,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      calorie: null == calorie
          ? _value.calorie
          : calorie // ignore: cast_nullable_to_non_nullable
              as int,
      carbs: null == carbs
          ? _value.carbs
          : carbs // ignore: cast_nullable_to_non_nullable
              as int,
      protein: null == protein
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as int,
      fat: null == fat
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MealModel implements _MealModel {
  _$_MealModel(
      {required this.type,
      required this.name,
      required this.calorie,
      required this.carbs,
      required this.protein,
      required this.fat});

  factory _$_MealModel.fromJson(Map<String, dynamic> json) =>
      _$$_MealModelFromJson(json);

  @override
  final MealType type;
  @override
  final String name;
  @override
  final int calorie;
  @override
  final int carbs;
  @override
  final int protein;
  @override
  final int fat;

  @override
  String toString() {
    return 'MealModel(type: $type, name: $name, calorie: $calorie, carbs: $carbs, protein: $protein, fat: $fat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MealModel &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.calorie, calorie) || other.calorie == calorie) &&
            (identical(other.carbs, carbs) || other.carbs == carbs) &&
            (identical(other.protein, protein) || other.protein == protein) &&
            (identical(other.fat, fat) || other.fat == fat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, name, calorie, carbs, protein, fat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MealModelCopyWith<_$_MealModel> get copyWith =>
      __$$_MealModelCopyWithImpl<_$_MealModel>(this, _$identity);
}

abstract class _MealModel implements MealModel {
  factory _MealModel(
      {required final MealType type,
      required final String name,
      required final int calorie,
      required final int carbs,
      required final int protein,
      required final int fat}) = _$_MealModel;

  factory _MealModel.fromJson(Map<String, dynamic> json) =
      _$_MealModel.fromJson;

  @override
  MealType get type;
  @override
  String get name;
  @override
  int get calorie;
  @override
  int get carbs;
  @override
  int get protein;
  @override
  int get fat;
  @override
  @JsonKey(ignore: true)
  _$$_MealModelCopyWith<_$_MealModel> get copyWith =>
      throw _privateConstructorUsedError;
}
