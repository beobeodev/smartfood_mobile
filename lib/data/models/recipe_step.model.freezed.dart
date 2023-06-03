// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_step.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecipeStepModel _$RecipeStepModelFromJson(Map<String, dynamic> json) {
  return _RecipeStepModel.fromJson(json);
}

/// @nodoc
mixin _$RecipeStepModel {
  String get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeStepModelCopyWith<RecipeStepModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeStepModelCopyWith<$Res> {
  factory $RecipeStepModelCopyWith(
          RecipeStepModel value, $Res Function(RecipeStepModel) then) =
      _$RecipeStepModelCopyWithImpl<$Res, RecipeStepModel>;
  @useResult
  $Res call({String id, String content, int order});
}

/// @nodoc
class _$RecipeStepModelCopyWithImpl<$Res, $Val extends RecipeStepModel>
    implements $RecipeStepModelCopyWith<$Res> {
  _$RecipeStepModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecipeStepModelCopyWith<$Res>
    implements $RecipeStepModelCopyWith<$Res> {
  factory _$$_RecipeStepModelCopyWith(
          _$_RecipeStepModel value, $Res Function(_$_RecipeStepModel) then) =
      __$$_RecipeStepModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String content, int order});
}

/// @nodoc
class __$$_RecipeStepModelCopyWithImpl<$Res>
    extends _$RecipeStepModelCopyWithImpl<$Res, _$_RecipeStepModel>
    implements _$$_RecipeStepModelCopyWith<$Res> {
  __$$_RecipeStepModelCopyWithImpl(
      _$_RecipeStepModel _value, $Res Function(_$_RecipeStepModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? order = null,
  }) {
    return _then(_$_RecipeStepModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_RecipeStepModel implements _RecipeStepModel {
  _$_RecipeStepModel(
      {required this.id, required this.content, required this.order});

  factory _$_RecipeStepModel.fromJson(Map<String, dynamic> json) =>
      _$$_RecipeStepModelFromJson(json);

  @override
  final String id;
  @override
  final String content;
  @override
  final int order;

  @override
  String toString() {
    return 'RecipeStepModel(id: $id, content: $content, order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeStepModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, content, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeStepModelCopyWith<_$_RecipeStepModel> get copyWith =>
      __$$_RecipeStepModelCopyWithImpl<_$_RecipeStepModel>(this, _$identity);
}

abstract class _RecipeStepModel implements RecipeStepModel {
  factory _RecipeStepModel(
      {required final String id,
      required final String content,
      required final int order}) = _$_RecipeStepModel;

  factory _RecipeStepModel.fromJson(Map<String, dynamic> json) =
      _$_RecipeStepModel.fromJson;

  @override
  String get id;
  @override
  String get content;
  @override
  int get order;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeStepModelCopyWith<_$_RecipeStepModel> get copyWith =>
      throw _privateConstructorUsedError;
}
