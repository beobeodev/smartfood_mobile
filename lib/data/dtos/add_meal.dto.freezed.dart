// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_meal.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddMealDTO {
  @JsonKey(includeFromJson: false, includeToJson: false)
  DateTime get date => throw _privateConstructorUsedError;
  MealType get typeOfMeal => throw _privateConstructorUsedError;
  List<String> get recipeIds => throw _privateConstructorUsedError;
  int get totalPeople => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddMealDTOCopyWith<AddMealDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddMealDTOCopyWith<$Res> {
  factory $AddMealDTOCopyWith(
          AddMealDTO value, $Res Function(AddMealDTO) then) =
      _$AddMealDTOCopyWithImpl<$Res, AddMealDTO>;
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false) DateTime date,
      MealType typeOfMeal,
      List<String> recipeIds,
      int totalPeople});
}

/// @nodoc
class _$AddMealDTOCopyWithImpl<$Res, $Val extends AddMealDTO>
    implements $AddMealDTOCopyWith<$Res> {
  _$AddMealDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? typeOfMeal = null,
    Object? recipeIds = null,
    Object? totalPeople = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      typeOfMeal: null == typeOfMeal
          ? _value.typeOfMeal
          : typeOfMeal // ignore: cast_nullable_to_non_nullable
              as MealType,
      recipeIds: null == recipeIds
          ? _value.recipeIds
          : recipeIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      totalPeople: null == totalPeople
          ? _value.totalPeople
          : totalPeople // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddMealDTOCopyWith<$Res>
    implements $AddMealDTOCopyWith<$Res> {
  factory _$$_AddMealDTOCopyWith(
          _$_AddMealDTO value, $Res Function(_$_AddMealDTO) then) =
      __$$_AddMealDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false) DateTime date,
      MealType typeOfMeal,
      List<String> recipeIds,
      int totalPeople});
}

/// @nodoc
class __$$_AddMealDTOCopyWithImpl<$Res>
    extends _$AddMealDTOCopyWithImpl<$Res, _$_AddMealDTO>
    implements _$$_AddMealDTOCopyWith<$Res> {
  __$$_AddMealDTOCopyWithImpl(
      _$_AddMealDTO _value, $Res Function(_$_AddMealDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? typeOfMeal = null,
    Object? recipeIds = null,
    Object? totalPeople = null,
  }) {
    return _then(_$_AddMealDTO(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      typeOfMeal: null == typeOfMeal
          ? _value.typeOfMeal
          : typeOfMeal // ignore: cast_nullable_to_non_nullable
              as MealType,
      recipeIds: null == recipeIds
          ? _value._recipeIds
          : recipeIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      totalPeople: null == totalPeople
          ? _value.totalPeople
          : totalPeople // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_AddMealDTO implements _AddMealDTO {
  _$_AddMealDTO(
      {@JsonKey(includeFromJson: false, includeToJson: false)
          required this.date,
      required this.typeOfMeal,
      required final List<String> recipeIds,
      this.totalPeople = 0})
      : _recipeIds = recipeIds;

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final DateTime date;
  @override
  final MealType typeOfMeal;
  final List<String> _recipeIds;
  @override
  List<String> get recipeIds {
    if (_recipeIds is EqualUnmodifiableListView) return _recipeIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipeIds);
  }

  @override
  @JsonKey()
  final int totalPeople;

  @override
  String toString() {
    return 'AddMealDTO(date: $date, typeOfMeal: $typeOfMeal, recipeIds: $recipeIds, totalPeople: $totalPeople)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddMealDTO &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.typeOfMeal, typeOfMeal) ||
                other.typeOfMeal == typeOfMeal) &&
            const DeepCollectionEquality()
                .equals(other._recipeIds, _recipeIds) &&
            (identical(other.totalPeople, totalPeople) ||
                other.totalPeople == totalPeople));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, typeOfMeal,
      const DeepCollectionEquality().hash(_recipeIds), totalPeople);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddMealDTOCopyWith<_$_AddMealDTO> get copyWith =>
      __$$_AddMealDTOCopyWithImpl<_$_AddMealDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddMealDTOToJson(
      this,
    );
  }
}

abstract class _AddMealDTO implements AddMealDTO {
  factory _AddMealDTO(
      {@JsonKey(includeFromJson: false, includeToJson: false)
          required final DateTime date,
      required final MealType typeOfMeal,
      required final List<String> recipeIds,
      final int totalPeople}) = _$_AddMealDTO;

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  DateTime get date;
  @override
  MealType get typeOfMeal;
  @override
  List<String> get recipeIds;
  @override
  int get totalPeople;
  @override
  @JsonKey(ignore: true)
  _$$_AddMealDTOCopyWith<_$_AddMealDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
