// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_practice_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchPracticeState {
  QueryDataInfo get info => throw _privateConstructorUsedError;
  List<PracticeModel> get practices => throw _privateConstructorUsedError;
  PaginationQueryDTO<dynamic> get dto => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchPracticeStateCopyWith<SearchPracticeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPracticeStateCopyWith<$Res> {
  factory $SearchPracticeStateCopyWith(
          SearchPracticeState value, $Res Function(SearchPracticeState) then) =
      _$SearchPracticeStateCopyWithImpl<$Res, SearchPracticeState>;
  @useResult
  $Res call(
      {QueryDataInfo info,
      List<PracticeModel> practices,
      PaginationQueryDTO<dynamic> dto});

  $QueryDataInfoCopyWith<$Res> get info;
  $PaginationQueryDTOCopyWith<dynamic, $Res> get dto;
}

/// @nodoc
class _$SearchPracticeStateCopyWithImpl<$Res, $Val extends SearchPracticeState>
    implements $SearchPracticeStateCopyWith<$Res> {
  _$SearchPracticeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? practices = null,
    Object? dto = null,
  }) {
    return _then(_value.copyWith(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as QueryDataInfo,
      practices: null == practices
          ? _value.practices
          : practices // ignore: cast_nullable_to_non_nullable
              as List<PracticeModel>,
      dto: null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as PaginationQueryDTO<dynamic>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QueryDataInfoCopyWith<$Res> get info {
    return $QueryDataInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationQueryDTOCopyWith<dynamic, $Res> get dto {
    return $PaginationQueryDTOCopyWith<dynamic, $Res>(_value.dto, (value) {
      return _then(_value.copyWith(dto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SearchPracticeStateCopyWith<$Res>
    implements $SearchPracticeStateCopyWith<$Res> {
  factory _$$_SearchPracticeStateCopyWith(_$_SearchPracticeState value,
          $Res Function(_$_SearchPracticeState) then) =
      __$$_SearchPracticeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {QueryDataInfo info,
      List<PracticeModel> practices,
      PaginationQueryDTO<dynamic> dto});

  @override
  $QueryDataInfoCopyWith<$Res> get info;
  @override
  $PaginationQueryDTOCopyWith<dynamic, $Res> get dto;
}

/// @nodoc
class __$$_SearchPracticeStateCopyWithImpl<$Res>
    extends _$SearchPracticeStateCopyWithImpl<$Res, _$_SearchPracticeState>
    implements _$$_SearchPracticeStateCopyWith<$Res> {
  __$$_SearchPracticeStateCopyWithImpl(_$_SearchPracticeState _value,
      $Res Function(_$_SearchPracticeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? practices = null,
    Object? dto = null,
  }) {
    return _then(_$_SearchPracticeState(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as QueryDataInfo,
      practices: null == practices
          ? _value._practices
          : practices // ignore: cast_nullable_to_non_nullable
              as List<PracticeModel>,
      dto: null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as PaginationQueryDTO<dynamic>,
    ));
  }
}

/// @nodoc

class _$_SearchPracticeState implements _SearchPracticeState {
  const _$_SearchPracticeState(
      {required this.info,
      final List<PracticeModel> practices = const [],
      required this.dto})
      : _practices = practices;

  @override
  final QueryDataInfo info;
  final List<PracticeModel> _practices;
  @override
  @JsonKey()
  List<PracticeModel> get practices {
    if (_practices is EqualUnmodifiableListView) return _practices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_practices);
  }

  @override
  final PaginationQueryDTO<dynamic> dto;

  @override
  String toString() {
    return 'SearchPracticeState(info: $info, practices: $practices, dto: $dto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchPracticeState &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality()
                .equals(other._practices, _practices) &&
            (identical(other.dto, dto) || other.dto == dto));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, info, const DeepCollectionEquality().hash(_practices), dto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchPracticeStateCopyWith<_$_SearchPracticeState> get copyWith =>
      __$$_SearchPracticeStateCopyWithImpl<_$_SearchPracticeState>(
          this, _$identity);
}

abstract class _SearchPracticeState implements SearchPracticeState {
  const factory _SearchPracticeState(
      {required final QueryDataInfo info,
      final List<PracticeModel> practices,
      required final PaginationQueryDTO<dynamic> dto}) = _$_SearchPracticeState;

  @override
  QueryDataInfo get info;
  @override
  List<PracticeModel> get practices;
  @override
  PaginationQueryDTO<dynamic> get dto;
  @override
  @JsonKey(ignore: true)
  _$$_SearchPracticeStateCopyWith<_$_SearchPracticeState> get copyWith =>
      throw _privateConstructorUsedError;
}
