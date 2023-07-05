// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'macros.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MacrosModel _$MacrosModelFromJson(Map<String, dynamic> json) {
  return _MacrosModel.fromJson(json);
}

/// @nodoc
mixin _$MacrosModel {
  MacrosType get type => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MacrosModelCopyWith<MacrosModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MacrosModelCopyWith<$Res> {
  factory $MacrosModelCopyWith(
          MacrosModel value, $Res Function(MacrosModel) then) =
      _$MacrosModelCopyWithImpl<$Res, MacrosModel>;
  @useResult
  $Res call({MacrosType type, double value});
}

/// @nodoc
class _$MacrosModelCopyWithImpl<$Res, $Val extends MacrosModel>
    implements $MacrosModelCopyWith<$Res> {
  _$MacrosModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MacrosType,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MacrosModelCopyWith<$Res>
    implements $MacrosModelCopyWith<$Res> {
  factory _$$_MacrosModelCopyWith(
          _$_MacrosModel value, $Res Function(_$_MacrosModel) then) =
      __$$_MacrosModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MacrosType type, double value});
}

/// @nodoc
class __$$_MacrosModelCopyWithImpl<$Res>
    extends _$MacrosModelCopyWithImpl<$Res, _$_MacrosModel>
    implements _$$_MacrosModelCopyWith<$Res> {
  __$$_MacrosModelCopyWithImpl(
      _$_MacrosModel _value, $Res Function(_$_MacrosModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
  }) {
    return _then(_$_MacrosModel(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MacrosType,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MacrosModel implements _MacrosModel {
  _$_MacrosModel({required this.type, required this.value});

  factory _$_MacrosModel.fromJson(Map<String, dynamic> json) =>
      _$$_MacrosModelFromJson(json);

  @override
  final MacrosType type;
  @override
  final double value;

  @override
  String toString() {
    return 'MacrosModel(type: $type, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MacrosModel &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MacrosModelCopyWith<_$_MacrosModel> get copyWith =>
      __$$_MacrosModelCopyWithImpl<_$_MacrosModel>(this, _$identity);
}

abstract class _MacrosModel implements MacrosModel {
  factory _MacrosModel(
      {required final MacrosType type,
      required final double value}) = _$_MacrosModel;

  factory _MacrosModel.fromJson(Map<String, dynamic> json) =
      _$_MacrosModel.fromJson;

  @override
  MacrosType get type;
  @override
  double get value;
  @override
  @JsonKey(ignore: true)
  _$$_MacrosModelCopyWith<_$_MacrosModel> get copyWith =>
      throw _privateConstructorUsedError;
}
