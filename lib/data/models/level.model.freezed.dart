// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'level.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LevelModel _$LevelModelFromJson(Map<String, dynamic> json) {
  return _LevelModel.fromJson(json);
}

/// @nodoc
mixin _$LevelModel {
  String get id => throw _privateConstructorUsedError;
  RecipeLevel get name => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  dynamic get isChosen => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set isChosen(dynamic value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LevelModelCopyWith<LevelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LevelModelCopyWith<$Res> {
  factory $LevelModelCopyWith(
          LevelModel value, $Res Function(LevelModel) then) =
      _$LevelModelCopyWithImpl<$Res, LevelModel>;
  @useResult
  $Res call(
      {String id,
      RecipeLevel name,
      @JsonKey(includeFromJson: false, includeToJson: false) dynamic isChosen});
}

/// @nodoc
class _$LevelModelCopyWithImpl<$Res, $Val extends LevelModel>
    implements $LevelModelCopyWith<$Res> {
  _$LevelModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isChosen = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as RecipeLevel,
      isChosen: freezed == isChosen
          ? _value.isChosen
          : isChosen // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LevelModelCopyWith<$Res>
    implements $LevelModelCopyWith<$Res> {
  factory _$$_LevelModelCopyWith(
          _$_LevelModel value, $Res Function(_$_LevelModel) then) =
      __$$_LevelModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      RecipeLevel name,
      @JsonKey(includeFromJson: false, includeToJson: false) dynamic isChosen});
}

/// @nodoc
class __$$_LevelModelCopyWithImpl<$Res>
    extends _$LevelModelCopyWithImpl<$Res, _$_LevelModel>
    implements _$$_LevelModelCopyWith<$Res> {
  __$$_LevelModelCopyWithImpl(
      _$_LevelModel _value, $Res Function(_$_LevelModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isChosen = freezed,
  }) {
    return _then(_$_LevelModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as RecipeLevel,
      isChosen: freezed == isChosen ? _value.isChosen! : isChosen,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_LevelModel implements _LevelModel {
  _$_LevelModel(
      {required this.id,
      required this.name,
      @JsonKey(includeFromJson: false, includeToJson: false)
          this.isChosen = false});

  factory _$_LevelModel.fromJson(Map<String, dynamic> json) =>
      _$$_LevelModelFromJson(json);

  @override
  final String id;
  @override
  final RecipeLevel name;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  dynamic isChosen;

  @override
  String toString() {
    return 'LevelModel(id: $id, name: $name, isChosen: $isChosen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LevelModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.isChosen, isChosen));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(isChosen));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LevelModelCopyWith<_$_LevelModel> get copyWith =>
      __$$_LevelModelCopyWithImpl<_$_LevelModel>(this, _$identity);
}

abstract class _LevelModel implements LevelModel {
  factory _LevelModel(
      {required final String id,
      required final RecipeLevel name,
      @JsonKey(includeFromJson: false, includeToJson: false)
          dynamic isChosen}) = _$_LevelModel;

  factory _LevelModel.fromJson(Map<String, dynamic> json) =
      _$_LevelModel.fromJson;

  @override
  String get id;
  @override
  RecipeLevel get name;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  dynamic get isChosen;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set isChosen(dynamic value);
  @override
  @JsonKey(ignore: true)
  _$$_LevelModelCopyWith<_$_LevelModel> get copyWith =>
      throw _privateConstructorUsedError;
}
