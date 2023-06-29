// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IngredientModel _$IngredientModelFromJson(Map<String, dynamic> json) {
  return _IngredientModel.fromJson(json);
}

/// @nodoc
mixin _$IngredientModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get slug => throw _privateConstructorUsedError;
  List<MediaModel>? get media => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IngredientModelCopyWith<IngredientModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientModelCopyWith<$Res> {
  factory $IngredientModelCopyWith(
          IngredientModel value, $Res Function(IngredientModel) then) =
      _$IngredientModelCopyWithImpl<$Res, IngredientModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(defaultValue: '') String name,
      @JsonKey(defaultValue: '') String slug,
      List<MediaModel>? media});
}

/// @nodoc
class _$IngredientModelCopyWithImpl<$Res, $Val extends IngredientModel>
    implements $IngredientModelCopyWith<$Res> {
  _$IngredientModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? media = freezed,
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
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<MediaModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IngredientModelCopyWith<$Res>
    implements $IngredientModelCopyWith<$Res> {
  factory _$$_IngredientModelCopyWith(
          _$_IngredientModel value, $Res Function(_$_IngredientModel) then) =
      __$$_IngredientModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(defaultValue: '') String name,
      @JsonKey(defaultValue: '') String slug,
      List<MediaModel>? media});
}

/// @nodoc
class __$$_IngredientModelCopyWithImpl<$Res>
    extends _$IngredientModelCopyWithImpl<$Res, _$_IngredientModel>
    implements _$$_IngredientModelCopyWith<$Res> {
  __$$_IngredientModelCopyWithImpl(
      _$_IngredientModel _value, $Res Function(_$_IngredientModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? media = freezed,
  }) {
    return _then(_$_IngredientModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      media: freezed == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<MediaModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(createToJson: false)
class _$_IngredientModel extends _IngredientModel {
  const _$_IngredientModel(
      {required this.id,
      @JsonKey(defaultValue: '') required this.name,
      @JsonKey(defaultValue: '') required this.slug,
      final List<MediaModel>? media})
      : _media = media,
        super._();

  factory _$_IngredientModel.fromJson(Map<String, dynamic> json) =>
      _$$_IngredientModelFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(defaultValue: '')
  final String name;
  @override
  @JsonKey(defaultValue: '')
  final String slug;
  final List<MediaModel>? _media;
  @override
  List<MediaModel>? get media {
    final value = _media;
    if (value == null) return null;
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'IngredientModel(id: $id, name: $name, slug: $slug, media: $media)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IngredientModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            const DeepCollectionEquality().equals(other._media, _media));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, slug, const DeepCollectionEquality().hash(_media));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IngredientModelCopyWith<_$_IngredientModel> get copyWith =>
      __$$_IngredientModelCopyWithImpl<_$_IngredientModel>(this, _$identity);
}

abstract class _IngredientModel extends IngredientModel {
  const factory _IngredientModel(
      {required final String id,
      @JsonKey(defaultValue: '') required final String name,
      @JsonKey(defaultValue: '') required final String slug,
      final List<MediaModel>? media}) = _$_IngredientModel;
  const _IngredientModel._() : super._();

  factory _IngredientModel.fromJson(Map<String, dynamic> json) =
      _$_IngredientModel.fromJson;

  @override
  String get id;
  @override
  @JsonKey(defaultValue: '')
  String get name;
  @override
  @JsonKey(defaultValue: '')
  String get slug;
  @override
  List<MediaModel>? get media;
  @override
  @JsonKey(ignore: true)
  _$$_IngredientModelCopyWith<_$_IngredientModel> get copyWith =>
      throw _privateConstructorUsedError;
}
