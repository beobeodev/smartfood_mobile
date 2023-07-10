// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_practice.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddPracticeDTO {
  @JsonKey(includeFromJson: false, includeToJson: false)
  @JsonTimeConverter()
  DateTime get date => throw _privateConstructorUsedError;
  String get exerciseId => throw _privateConstructorUsedError;
  int get practiceDuration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddPracticeDTOCopyWith<AddPracticeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPracticeDTOCopyWith<$Res> {
  factory $AddPracticeDTOCopyWith(
          AddPracticeDTO value, $Res Function(AddPracticeDTO) then) =
      _$AddPracticeDTOCopyWithImpl<$Res, AddPracticeDTO>;
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false)
      @JsonTimeConverter()
          DateTime date,
      String exerciseId,
      int practiceDuration});
}

/// @nodoc
class _$AddPracticeDTOCopyWithImpl<$Res, $Val extends AddPracticeDTO>
    implements $AddPracticeDTOCopyWith<$Res> {
  _$AddPracticeDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? exerciseId = null,
    Object? practiceDuration = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      exerciseId: null == exerciseId
          ? _value.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as String,
      practiceDuration: null == practiceDuration
          ? _value.practiceDuration
          : practiceDuration // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddPracticeDTOCopyWith<$Res>
    implements $AddPracticeDTOCopyWith<$Res> {
  factory _$$_AddPracticeDTOCopyWith(
          _$_AddPracticeDTO value, $Res Function(_$_AddPracticeDTO) then) =
      __$$_AddPracticeDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false)
      @JsonTimeConverter()
          DateTime date,
      String exerciseId,
      int practiceDuration});
}

/// @nodoc
class __$$_AddPracticeDTOCopyWithImpl<$Res>
    extends _$AddPracticeDTOCopyWithImpl<$Res, _$_AddPracticeDTO>
    implements _$$_AddPracticeDTOCopyWith<$Res> {
  __$$_AddPracticeDTOCopyWithImpl(
      _$_AddPracticeDTO _value, $Res Function(_$_AddPracticeDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? exerciseId = null,
    Object? practiceDuration = null,
  }) {
    return _then(_$_AddPracticeDTO(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      exerciseId: null == exerciseId
          ? _value.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as String,
      practiceDuration: null == practiceDuration
          ? _value.practiceDuration
          : practiceDuration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_AddPracticeDTO implements _AddPracticeDTO {
  _$_AddPracticeDTO(
      {@JsonKey(includeFromJson: false, includeToJson: false)
      @JsonTimeConverter()
          required this.date,
      required this.exerciseId,
      required this.practiceDuration});

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @JsonTimeConverter()
  final DateTime date;
  @override
  final String exerciseId;
  @override
  final int practiceDuration;

  @override
  String toString() {
    return 'AddPracticeDTO(date: $date, exerciseId: $exerciseId, practiceDuration: $practiceDuration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddPracticeDTO &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.exerciseId, exerciseId) ||
                other.exerciseId == exerciseId) &&
            (identical(other.practiceDuration, practiceDuration) ||
                other.practiceDuration == practiceDuration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, date, exerciseId, practiceDuration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddPracticeDTOCopyWith<_$_AddPracticeDTO> get copyWith =>
      __$$_AddPracticeDTOCopyWithImpl<_$_AddPracticeDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddPracticeDTOToJson(
      this,
    );
  }
}

abstract class _AddPracticeDTO implements AddPracticeDTO {
  factory _AddPracticeDTO(
      {@JsonKey(includeFromJson: false, includeToJson: false)
      @JsonTimeConverter()
          required final DateTime date,
      required final String exerciseId,
      required final int practiceDuration}) = _$_AddPracticeDTO;

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @JsonTimeConverter()
  DateTime get date;
  @override
  String get exerciseId;
  @override
  int get practiceDuration;
  @override
  @JsonKey(ignore: true)
  _$$_AddPracticeDTOCopyWith<_$_AddPracticeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
