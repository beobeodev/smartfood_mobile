// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MediaModel _$MediaModelFromJson(Map<String, dynamic> json) {
  return _MediaModel.fromJson(json);
}

/// @nodoc
mixin _$MediaModel {
  String get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MediaModelCopyWith<MediaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaModelCopyWith<$Res> {
  factory $MediaModelCopyWith(
          MediaModel value, $Res Function(MediaModel) then) =
      _$MediaModelCopyWithImpl<$Res, MediaModel>;
  @useResult
  $Res call({String id, String url});
}

/// @nodoc
class _$MediaModelCopyWithImpl<$Res, $Val extends MediaModel>
    implements $MediaModelCopyWith<$Res> {
  _$MediaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MediaModelCopyWith<$Res>
    implements $MediaModelCopyWith<$Res> {
  factory _$$_MediaModelCopyWith(
          _$_MediaModel value, $Res Function(_$_MediaModel) then) =
      __$$_MediaModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String url});
}

/// @nodoc
class __$$_MediaModelCopyWithImpl<$Res>
    extends _$MediaModelCopyWithImpl<$Res, _$_MediaModel>
    implements _$$_MediaModelCopyWith<$Res> {
  __$$_MediaModelCopyWithImpl(
      _$_MediaModel _value, $Res Function(_$_MediaModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
  }) {
    return _then(_$_MediaModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MediaModel implements _MediaModel {
  const _$_MediaModel({required this.id, required this.url});

  factory _$_MediaModel.fromJson(Map<String, dynamic> json) =>
      _$$_MediaModelFromJson(json);

  @override
  final String id;
  @override
  final String url;

  @override
  String toString() {
    return 'MediaModel(id: $id, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediaModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaModelCopyWith<_$_MediaModel> get copyWith =>
      __$$_MediaModelCopyWithImpl<_$_MediaModel>(this, _$identity);
}

abstract class _MediaModel implements MediaModel {
  const factory _MediaModel(
      {required final String id, required final String url}) = _$_MediaModel;

  factory _MediaModel.fromJson(Map<String, dynamic> json) =
      _$_MediaModel.fromJson;

  @override
  String get id;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_MediaModelCopyWith<_$_MediaModel> get copyWith =>
      throw _privateConstructorUsedError;
}
