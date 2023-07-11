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
  String? get id => throw _privateConstructorUsedError;
  RecipeModel get recipe => throw _privateConstructorUsedError;
  double get kcal => throw _privateConstructorUsedError;
  double get fat => throw _privateConstructorUsedError;
  double get carbs => throw _privateConstructorUsedError;
  double get protein => throw _privateConstructorUsedError;
  int get totalPeople => throw _privateConstructorUsedError;

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
      {String? id,
      RecipeModel recipe,
      double kcal,
      double fat,
      double carbs,
      double protein,
      int totalPeople});

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
    Object? id = freezed,
    Object? recipe = null,
    Object? kcal = null,
    Object? fat = null,
    Object? carbs = null,
    Object? protein = null,
    Object? totalPeople = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      recipe: null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as RecipeModel,
      kcal: null == kcal
          ? _value.kcal
          : kcal // ignore: cast_nullable_to_non_nullable
              as double,
      fat: null == fat
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as double,
      carbs: null == carbs
          ? _value.carbs
          : carbs // ignore: cast_nullable_to_non_nullable
              as double,
      protein: null == protein
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as double,
      totalPeople: null == totalPeople
          ? _value.totalPeople
          : totalPeople // ignore: cast_nullable_to_non_nullable
              as int,
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
  $Res call(
      {String? id,
      RecipeModel recipe,
      double kcal,
      double fat,
      double carbs,
      double protein,
      int totalPeople});

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
    Object? id = freezed,
    Object? recipe = null,
    Object? kcal = null,
    Object? fat = null,
    Object? carbs = null,
    Object? protein = null,
    Object? totalPeople = null,
  }) {
    return _then(_$_MealModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      recipe: null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as RecipeModel,
      kcal: null == kcal
          ? _value.kcal
          : kcal // ignore: cast_nullable_to_non_nullable
              as double,
      fat: null == fat
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as double,
      carbs: null == carbs
          ? _value.carbs
          : carbs // ignore: cast_nullable_to_non_nullable
              as double,
      protein: null == protein
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as double,
      totalPeople: null == totalPeople
          ? _value.totalPeople
          : totalPeople // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MealModel extends _MealModel {
  _$_MealModel(
      {this.id,
      required this.recipe,
      required this.kcal,
      required this.fat,
      required this.carbs,
      required this.protein,
      this.totalPeople = 1})
      : super._();

  factory _$_MealModel.fromJson(Map<String, dynamic> json) =>
      _$$_MealModelFromJson(json);

  @override
  final String? id;
  @override
  final RecipeModel recipe;
  @override
  final double kcal;
  @override
  final double fat;
  @override
  final double carbs;
  @override
  final double protein;
  @override
  @JsonKey()
  final int totalPeople;

  @override
  String toString() {
    return 'MealModel(id: $id, recipe: $recipe, kcal: $kcal, fat: $fat, carbs: $carbs, protein: $protein, totalPeople: $totalPeople)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MealModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.recipe, recipe) || other.recipe == recipe) &&
            (identical(other.kcal, kcal) || other.kcal == kcal) &&
            (identical(other.fat, fat) || other.fat == fat) &&
            (identical(other.carbs, carbs) || other.carbs == carbs) &&
            (identical(other.protein, protein) || other.protein == protein) &&
            (identical(other.totalPeople, totalPeople) ||
                other.totalPeople == totalPeople));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, recipe, kcal, fat, carbs, protein, totalPeople);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MealModelCopyWith<_$_MealModel> get copyWith =>
      __$$_MealModelCopyWithImpl<_$_MealModel>(this, _$identity);
}

abstract class _MealModel extends MealModel {
  factory _MealModel(
      {final String? id,
      required final RecipeModel recipe,
      required final double kcal,
      required final double fat,
      required final double carbs,
      required final double protein,
      final int totalPeople}) = _$_MealModel;
  _MealModel._() : super._();

  factory _MealModel.fromJson(Map<String, dynamic> json) =
      _$_MealModel.fromJson;

  @override
  String? get id;
  @override
  RecipeModel get recipe;
  @override
  double get kcal;
  @override
  double get fat;
  @override
  double get carbs;
  @override
  double get protein;
  @override
  int get totalPeople;
  @override
  @JsonKey(ignore: true)
  _$$_MealModelCopyWith<_$_MealModel> get copyWith =>
      throw _privateConstructorUsedError;
}
