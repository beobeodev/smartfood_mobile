// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diary.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DiaryModel _$DiaryModelFromJson(Map<String, dynamic> json) {
  return _DiaryModel.fromJson(json);
}

/// @nodoc
mixin _$DiaryModel {
  DateTime get date => throw _privateConstructorUsedError;
  int? get totalCalorie => throw _privateConstructorUsedError;
  List<RecipeModel>? get dishes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DiaryModelCopyWith<DiaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiaryModelCopyWith<$Res> {
  factory $DiaryModelCopyWith(
          DiaryModel value, $Res Function(DiaryModel) then) =
      _$DiaryModelCopyWithImpl<$Res, DiaryModel>;
  @useResult
  $Res call({DateTime date, int? totalCalorie, List<RecipeModel>? dishes});
}

/// @nodoc
class _$DiaryModelCopyWithImpl<$Res, $Val extends DiaryModel>
    implements $DiaryModelCopyWith<$Res> {
  _$DiaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? totalCalorie = freezed,
    Object? dishes = freezed,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalCalorie: freezed == totalCalorie
          ? _value.totalCalorie
          : totalCalorie // ignore: cast_nullable_to_non_nullable
              as int?,
      dishes: freezed == dishes
          ? _value.dishes
          : dishes // ignore: cast_nullable_to_non_nullable
              as List<RecipeModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DiaryModelCopyWith<$Res>
    implements $DiaryModelCopyWith<$Res> {
  factory _$$_DiaryModelCopyWith(
          _$_DiaryModel value, $Res Function(_$_DiaryModel) then) =
      __$$_DiaryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, int? totalCalorie, List<RecipeModel>? dishes});
}

/// @nodoc
class __$$_DiaryModelCopyWithImpl<$Res>
    extends _$DiaryModelCopyWithImpl<$Res, _$_DiaryModel>
    implements _$$_DiaryModelCopyWith<$Res> {
  __$$_DiaryModelCopyWithImpl(
      _$_DiaryModel _value, $Res Function(_$_DiaryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? totalCalorie = freezed,
    Object? dishes = freezed,
  }) {
    return _then(_$_DiaryModel(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalCalorie: freezed == totalCalorie
          ? _value.totalCalorie
          : totalCalorie // ignore: cast_nullable_to_non_nullable
              as int?,
      dishes: freezed == dishes
          ? _value._dishes
          : dishes // ignore: cast_nullable_to_non_nullable
              as List<RecipeModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_DiaryModel extends _DiaryModel {
  _$_DiaryModel(
      {required this.date, this.totalCalorie, final List<RecipeModel>? dishes})
      : _dishes = dishes,
        super._();

  factory _$_DiaryModel.fromJson(Map<String, dynamic> json) =>
      _$$_DiaryModelFromJson(json);

  @override
  final DateTime date;
  @override
  final int? totalCalorie;
  final List<RecipeModel>? _dishes;
  @override
  List<RecipeModel>? get dishes {
    final value = _dishes;
    if (value == null) return null;
    if (_dishes is EqualUnmodifiableListView) return _dishes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DiaryModel(date: $date, totalCalorie: $totalCalorie, dishes: $dishes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiaryModel &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.totalCalorie, totalCalorie) ||
                other.totalCalorie == totalCalorie) &&
            const DeepCollectionEquality().equals(other._dishes, _dishes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, totalCalorie,
      const DeepCollectionEquality().hash(_dishes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DiaryModelCopyWith<_$_DiaryModel> get copyWith =>
      __$$_DiaryModelCopyWithImpl<_$_DiaryModel>(this, _$identity);
}

abstract class _DiaryModel extends DiaryModel {
  factory _DiaryModel(
      {required final DateTime date,
      final int? totalCalorie,
      final List<RecipeModel>? dishes}) = _$_DiaryModel;
  _DiaryModel._() : super._();

  factory _DiaryModel.fromJson(Map<String, dynamic> json) =
      _$_DiaryModel.fromJson;

  @override
  DateTime get date;
  @override
  int? get totalCalorie;
  @override
  List<RecipeModel>? get dishes;
  @override
  @JsonKey(ignore: true)
  _$$_DiaryModelCopyWith<_$_DiaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
