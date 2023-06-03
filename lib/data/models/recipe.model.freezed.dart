// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecipeModel _$RecipeModelFromJson(Map<String, dynamic> json) {
  return _RecipeModel.fromJson(json);
}

/// @nodoc
mixin _$RecipeModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  LevelModel get level => throw _privateConstructorUsedError;
  CategoryModel get category => throw _privateConstructorUsedError;
  CuisineModel get cuisine => throw _privateConstructorUsedError;
  List<QuantificationModel>? get quantification =>
      throw _privateConstructorUsedError;
  List<RecipeStepModel>? get recipeStep => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeModelCopyWith<RecipeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeModelCopyWith<$Res> {
  factory $RecipeModelCopyWith(
          RecipeModel value, $Res Function(RecipeModel) then) =
      _$RecipeModelCopyWithImpl<$Res, RecipeModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      LevelModel level,
      CategoryModel category,
      CuisineModel cuisine,
      List<QuantificationModel>? quantification,
      List<RecipeStepModel>? recipeStep});

  $LevelModelCopyWith<$Res> get level;
  $CategoryModelCopyWith<$Res> get category;
  $CuisineModelCopyWith<$Res> get cuisine;
}

/// @nodoc
class _$RecipeModelCopyWithImpl<$Res, $Val extends RecipeModel>
    implements $RecipeModelCopyWith<$Res> {
  _$RecipeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? level = null,
    Object? category = null,
    Object? cuisine = null,
    Object? quantification = freezed,
    Object? recipeStep = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as LevelModel,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
      cuisine: null == cuisine
          ? _value.cuisine
          : cuisine // ignore: cast_nullable_to_non_nullable
              as CuisineModel,
      quantification: freezed == quantification
          ? _value.quantification
          : quantification // ignore: cast_nullable_to_non_nullable
              as List<QuantificationModel>?,
      recipeStep: freezed == recipeStep
          ? _value.recipeStep
          : recipeStep // ignore: cast_nullable_to_non_nullable
              as List<RecipeStepModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LevelModelCopyWith<$Res> get level {
    return $LevelModelCopyWith<$Res>(_value.level, (value) {
      return _then(_value.copyWith(level: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res> get category {
    return $CategoryModelCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CuisineModelCopyWith<$Res> get cuisine {
    return $CuisineModelCopyWith<$Res>(_value.cuisine, (value) {
      return _then(_value.copyWith(cuisine: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RecipeModelCopyWith<$Res>
    implements $RecipeModelCopyWith<$Res> {
  factory _$$_RecipeModelCopyWith(
          _$_RecipeModel value, $Res Function(_$_RecipeModel) then) =
      __$$_RecipeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      LevelModel level,
      CategoryModel category,
      CuisineModel cuisine,
      List<QuantificationModel>? quantification,
      List<RecipeStepModel>? recipeStep});

  @override
  $LevelModelCopyWith<$Res> get level;
  @override
  $CategoryModelCopyWith<$Res> get category;
  @override
  $CuisineModelCopyWith<$Res> get cuisine;
}

/// @nodoc
class __$$_RecipeModelCopyWithImpl<$Res>
    extends _$RecipeModelCopyWithImpl<$Res, _$_RecipeModel>
    implements _$$_RecipeModelCopyWith<$Res> {
  __$$_RecipeModelCopyWithImpl(
      _$_RecipeModel _value, $Res Function(_$_RecipeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? level = null,
    Object? category = null,
    Object? cuisine = null,
    Object? quantification = freezed,
    Object? recipeStep = freezed,
  }) {
    return _then(_$_RecipeModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as LevelModel,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
      cuisine: null == cuisine
          ? _value.cuisine
          : cuisine // ignore: cast_nullable_to_non_nullable
              as CuisineModel,
      quantification: freezed == quantification
          ? _value._quantification
          : quantification // ignore: cast_nullable_to_non_nullable
              as List<QuantificationModel>?,
      recipeStep: freezed == recipeStep
          ? _value._recipeStep
          : recipeStep // ignore: cast_nullable_to_non_nullable
              as List<RecipeStepModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_RecipeModel implements _RecipeModel {
  _$_RecipeModel(
      {required this.id,
      required this.name,
      required this.description,
      required this.level,
      required this.category,
      required this.cuisine,
      final List<QuantificationModel>? quantification,
      final List<RecipeStepModel>? recipeStep})
      : _quantification = quantification,
        _recipeStep = recipeStep;

  factory _$_RecipeModel.fromJson(Map<String, dynamic> json) =>
      _$$_RecipeModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final LevelModel level;
  @override
  final CategoryModel category;
  @override
  final CuisineModel cuisine;
  final List<QuantificationModel>? _quantification;
  @override
  List<QuantificationModel>? get quantification {
    final value = _quantification;
    if (value == null) return null;
    if (_quantification is EqualUnmodifiableListView) return _quantification;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<RecipeStepModel>? _recipeStep;
  @override
  List<RecipeStepModel>? get recipeStep {
    final value = _recipeStep;
    if (value == null) return null;
    if (_recipeStep is EqualUnmodifiableListView) return _recipeStep;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RecipeModel(id: $id, name: $name, description: $description, level: $level, category: $category, cuisine: $cuisine, quantification: $quantification, recipeStep: $recipeStep)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.cuisine, cuisine) || other.cuisine == cuisine) &&
            const DeepCollectionEquality()
                .equals(other._quantification, _quantification) &&
            const DeepCollectionEquality()
                .equals(other._recipeStep, _recipeStep));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      level,
      category,
      cuisine,
      const DeepCollectionEquality().hash(_quantification),
      const DeepCollectionEquality().hash(_recipeStep));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeModelCopyWith<_$_RecipeModel> get copyWith =>
      __$$_RecipeModelCopyWithImpl<_$_RecipeModel>(this, _$identity);
}

abstract class _RecipeModel implements RecipeModel {
  factory _RecipeModel(
      {required final String id,
      required final String name,
      required final String description,
      required final LevelModel level,
      required final CategoryModel category,
      required final CuisineModel cuisine,
      final List<QuantificationModel>? quantification,
      final List<RecipeStepModel>? recipeStep}) = _$_RecipeModel;

  factory _RecipeModel.fromJson(Map<String, dynamic> json) =
      _$_RecipeModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  LevelModel get level;
  @override
  CategoryModel get category;
  @override
  CuisineModel get cuisine;
  @override
  List<QuantificationModel>? get quantification;
  @override
  List<RecipeStepModel>? get recipeStep;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeModelCopyWith<_$_RecipeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
