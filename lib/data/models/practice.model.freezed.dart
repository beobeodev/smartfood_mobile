// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'practice.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PracticeModel _$PracticeModelFromJson(Map<String, dynamic> json) {
  return _PracticeModel.fromJson(json);
}

/// @nodoc
mixin _$PracticeModel {
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PracticeModelCopyWith<PracticeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PracticeModelCopyWith<$Res> {
  factory $PracticeModelCopyWith(
          PracticeModel value, $Res Function(PracticeModel) then) =
      _$PracticeModelCopyWithImpl<$Res, PracticeModel>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$PracticeModelCopyWithImpl<$Res, $Val extends PracticeModel>
    implements $PracticeModelCopyWith<$Res> {
  _$PracticeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PracticeModelCopyWith<$Res>
    implements $PracticeModelCopyWith<$Res> {
  factory _$$_PracticeModelCopyWith(
          _$_PracticeModel value, $Res Function(_$_PracticeModel) then) =
      __$$_PracticeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_PracticeModelCopyWithImpl<$Res>
    extends _$PracticeModelCopyWithImpl<$Res, _$_PracticeModel>
    implements _$$_PracticeModelCopyWith<$Res> {
  __$$_PracticeModelCopyWithImpl(
      _$_PracticeModel _value, $Res Function(_$_PracticeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_PracticeModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_PracticeModel implements _PracticeModel {
  _$_PracticeModel({required this.name});

  factory _$_PracticeModel.fromJson(Map<String, dynamic> json) =>
      _$$_PracticeModelFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'PracticeModel(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PracticeModel &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PracticeModelCopyWith<_$_PracticeModel> get copyWith =>
      __$$_PracticeModelCopyWithImpl<_$_PracticeModel>(this, _$identity);
}

abstract class _PracticeModel implements PracticeModel {
  factory _PracticeModel({required final String name}) = _$_PracticeModel;

  factory _PracticeModel.fromJson(Map<String, dynamic> json) =
      _$_PracticeModel.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_PracticeModelCopyWith<_$_PracticeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
