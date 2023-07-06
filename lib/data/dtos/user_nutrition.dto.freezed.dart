// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_nutrition.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdateUserNutritionDTO {
  int get age => throw _privateConstructorUsedError;
  GenderType get gender => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;
  PracticeMode get practiceMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateUserNutritionDTOCopyWith<UpdateUserNutritionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserNutritionDTOCopyWith<$Res> {
  factory $UpdateUserNutritionDTOCopyWith(UpdateUserNutritionDTO value,
          $Res Function(UpdateUserNutritionDTO) then) =
      _$UpdateUserNutritionDTOCopyWithImpl<$Res, UpdateUserNutritionDTO>;
  @useResult
  $Res call(
      {int age,
      GenderType gender,
      double height,
      double weight,
      PracticeMode practiceMode});
}

/// @nodoc
class _$UpdateUserNutritionDTOCopyWithImpl<$Res,
        $Val extends UpdateUserNutritionDTO>
    implements $UpdateUserNutritionDTOCopyWith<$Res> {
  _$UpdateUserNutritionDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? age = null,
    Object? gender = null,
    Object? height = null,
    Object? weight = null,
    Object? practiceMode = null,
  }) {
    return _then(_value.copyWith(
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderType,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      practiceMode: null == practiceMode
          ? _value.practiceMode
          : practiceMode // ignore: cast_nullable_to_non_nullable
              as PracticeMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateUserNutritionDTOCopyWith<$Res>
    implements $UpdateUserNutritionDTOCopyWith<$Res> {
  factory _$$_UpdateUserNutritionDTOCopyWith(_$_UpdateUserNutritionDTO value,
          $Res Function(_$_UpdateUserNutritionDTO) then) =
      __$$_UpdateUserNutritionDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int age,
      GenderType gender,
      double height,
      double weight,
      PracticeMode practiceMode});
}

/// @nodoc
class __$$_UpdateUserNutritionDTOCopyWithImpl<$Res>
    extends _$UpdateUserNutritionDTOCopyWithImpl<$Res,
        _$_UpdateUserNutritionDTO>
    implements _$$_UpdateUserNutritionDTOCopyWith<$Res> {
  __$$_UpdateUserNutritionDTOCopyWithImpl(_$_UpdateUserNutritionDTO _value,
      $Res Function(_$_UpdateUserNutritionDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? age = null,
    Object? gender = null,
    Object? height = null,
    Object? weight = null,
    Object? practiceMode = null,
  }) {
    return _then(_$_UpdateUserNutritionDTO(
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderType,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      practiceMode: null == practiceMode
          ? _value.practiceMode
          : practiceMode // ignore: cast_nullable_to_non_nullable
              as PracticeMode,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_UpdateUserNutritionDTO implements _UpdateUserNutritionDTO {
  _$_UpdateUserNutritionDTO(
      {required this.age,
      required this.gender,
      required this.height,
      required this.weight,
      required this.practiceMode});

  @override
  final int age;
  @override
  final GenderType gender;
  @override
  final double height;
  @override
  final double weight;
  @override
  final PracticeMode practiceMode;

  @override
  String toString() {
    return 'UpdateUserNutritionDTO(age: $age, gender: $gender, height: $height, weight: $weight, practiceMode: $practiceMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateUserNutritionDTO &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.practiceMode, practiceMode) ||
                other.practiceMode == practiceMode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, age, gender, height, weight, practiceMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateUserNutritionDTOCopyWith<_$_UpdateUserNutritionDTO> get copyWith =>
      __$$_UpdateUserNutritionDTOCopyWithImpl<_$_UpdateUserNutritionDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateUserNutritionDTOToJson(
      this,
    );
  }
}

abstract class _UpdateUserNutritionDTO implements UpdateUserNutritionDTO {
  factory _UpdateUserNutritionDTO(
      {required final int age,
      required final GenderType gender,
      required final double height,
      required final double weight,
      required final PracticeMode practiceMode}) = _$_UpdateUserNutritionDTO;

  @override
  int get age;
  @override
  GenderType get gender;
  @override
  double get height;
  @override
  double get weight;
  @override
  PracticeMode get practiceMode;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateUserNutritionDTOCopyWith<_$_UpdateUserNutritionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
