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
  int get totalCalories => throw _privateConstructorUsedError;
  List<MealModel> get breakfast => throw _privateConstructorUsedError;
  List<MealModel> get lunch => throw _privateConstructorUsedError;
  List<MealModel> get dinner => throw _privateConstructorUsedError;

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
  $Res call(
      {DateTime date,
      int totalCalories,
      List<MealModel> breakfast,
      List<MealModel> lunch,
      List<MealModel> dinner});
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
    Object? totalCalories = null,
    Object? breakfast = null,
    Object? lunch = null,
    Object? dinner = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalCalories: null == totalCalories
          ? _value.totalCalories
          : totalCalories // ignore: cast_nullable_to_non_nullable
              as int,
      breakfast: null == breakfast
          ? _value.breakfast
          : breakfast // ignore: cast_nullable_to_non_nullable
              as List<MealModel>,
      lunch: null == lunch
          ? _value.lunch
          : lunch // ignore: cast_nullable_to_non_nullable
              as List<MealModel>,
      dinner: null == dinner
          ? _value.dinner
          : dinner // ignore: cast_nullable_to_non_nullable
              as List<MealModel>,
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
  $Res call(
      {DateTime date,
      int totalCalories,
      List<MealModel> breakfast,
      List<MealModel> lunch,
      List<MealModel> dinner});
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
    Object? totalCalories = null,
    Object? breakfast = null,
    Object? lunch = null,
    Object? dinner = null,
  }) {
    return _then(_$_DiaryModel(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalCalories: null == totalCalories
          ? _value.totalCalories
          : totalCalories // ignore: cast_nullable_to_non_nullable
              as int,
      breakfast: null == breakfast
          ? _value._breakfast
          : breakfast // ignore: cast_nullable_to_non_nullable
              as List<MealModel>,
      lunch: null == lunch
          ? _value._lunch
          : lunch // ignore: cast_nullable_to_non_nullable
              as List<MealModel>,
      dinner: null == dinner
          ? _value._dinner
          : dinner // ignore: cast_nullable_to_non_nullable
              as List<MealModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_DiaryModel extends _DiaryModel {
  _$_DiaryModel(
      {required this.date,
      required this.totalCalories,
      final List<MealModel> breakfast = const [],
      final List<MealModel> lunch = const [],
      final List<MealModel> dinner = const []})
      : _breakfast = breakfast,
        _lunch = lunch,
        _dinner = dinner,
        super._();

  factory _$_DiaryModel.fromJson(Map<String, dynamic> json) =>
      _$$_DiaryModelFromJson(json);

  @override
  final DateTime date;
  @override
  final int totalCalories;
  final List<MealModel> _breakfast;
  @override
  @JsonKey()
  List<MealModel> get breakfast {
    if (_breakfast is EqualUnmodifiableListView) return _breakfast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_breakfast);
  }

  final List<MealModel> _lunch;
  @override
  @JsonKey()
  List<MealModel> get lunch {
    if (_lunch is EqualUnmodifiableListView) return _lunch;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lunch);
  }

  final List<MealModel> _dinner;
  @override
  @JsonKey()
  List<MealModel> get dinner {
    if (_dinner is EqualUnmodifiableListView) return _dinner;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dinner);
  }

  @override
  String toString() {
    return 'DiaryModel(date: $date, totalCalories: $totalCalories, breakfast: $breakfast, lunch: $lunch, dinner: $dinner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiaryModel &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.totalCalories, totalCalories) ||
                other.totalCalories == totalCalories) &&
            const DeepCollectionEquality()
                .equals(other._breakfast, _breakfast) &&
            const DeepCollectionEquality().equals(other._lunch, _lunch) &&
            const DeepCollectionEquality().equals(other._dinner, _dinner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      date,
      totalCalories,
      const DeepCollectionEquality().hash(_breakfast),
      const DeepCollectionEquality().hash(_lunch),
      const DeepCollectionEquality().hash(_dinner));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DiaryModelCopyWith<_$_DiaryModel> get copyWith =>
      __$$_DiaryModelCopyWithImpl<_$_DiaryModel>(this, _$identity);
}

abstract class _DiaryModel extends DiaryModel {
  factory _DiaryModel(
      {required final DateTime date,
      required final int totalCalories,
      final List<MealModel> breakfast,
      final List<MealModel> lunch,
      final List<MealModel> dinner}) = _$_DiaryModel;
  _DiaryModel._() : super._();

  factory _DiaryModel.fromJson(Map<String, dynamic> json) =
      _$_DiaryModel.fromJson;

  @override
  DateTime get date;
  @override
  int get totalCalories;
  @override
  List<MealModel> get breakfast;
  @override
  List<MealModel> get lunch;
  @override
  List<MealModel> get dinner;
  @override
  @JsonKey(ignore: true)
  _$$_DiaryModelCopyWith<_$_DiaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
