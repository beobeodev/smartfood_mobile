// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_profile.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdateProfileDTO {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateProfileDTOCopyWith<UpdateProfileDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileDTOCopyWith<$Res> {
  factory $UpdateProfileDTOCopyWith(
          UpdateProfileDTO value, $Res Function(UpdateProfileDTO) then) =
      _$UpdateProfileDTOCopyWithImpl<$Res, UpdateProfileDTO>;
  @useResult
  $Res call({String firstName, String lastName});
}

/// @nodoc
class _$UpdateProfileDTOCopyWithImpl<$Res, $Val extends UpdateProfileDTO>
    implements $UpdateProfileDTOCopyWith<$Res> {
  _$UpdateProfileDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateProfileDTOCopyWith<$Res>
    implements $UpdateProfileDTOCopyWith<$Res> {
  factory _$$_UpdateProfileDTOCopyWith(
          _$_UpdateProfileDTO value, $Res Function(_$_UpdateProfileDTO) then) =
      __$$_UpdateProfileDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String firstName, String lastName});
}

/// @nodoc
class __$$_UpdateProfileDTOCopyWithImpl<$Res>
    extends _$UpdateProfileDTOCopyWithImpl<$Res, _$_UpdateProfileDTO>
    implements _$$_UpdateProfileDTOCopyWith<$Res> {
  __$$_UpdateProfileDTOCopyWithImpl(
      _$_UpdateProfileDTO _value, $Res Function(_$_UpdateProfileDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
  }) {
    return _then(_$_UpdateProfileDTO(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_UpdateProfileDTO implements _UpdateProfileDTO {
  _$_UpdateProfileDTO({required this.firstName, required this.lastName});

  @override
  final String firstName;
  @override
  final String lastName;

  @override
  String toString() {
    return 'UpdateProfileDTO(firstName: $firstName, lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateProfileDTO &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateProfileDTOCopyWith<_$_UpdateProfileDTO> get copyWith =>
      __$$_UpdateProfileDTOCopyWithImpl<_$_UpdateProfileDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateProfileDTOToJson(
      this,
    );
  }
}

abstract class _UpdateProfileDTO implements UpdateProfileDTO {
  factory _UpdateProfileDTO(
      {required final String firstName,
      required final String lastName}) = _$_UpdateProfileDTO;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateProfileDTOCopyWith<_$_UpdateProfileDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
