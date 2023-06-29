// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home.bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRecommendedRecipes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRecommendedRecipes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRecommendedRecipes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRecommendedRecipes value)
        getRecommendedRecipes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRecommendedRecipes value)? getRecommendedRecipes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRecommendedRecipes value)? getRecommendedRecipes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetRecommendedRecipesCopyWith<$Res> {
  factory _$$_GetRecommendedRecipesCopyWith(_$_GetRecommendedRecipes value,
          $Res Function(_$_GetRecommendedRecipes) then) =
      __$$_GetRecommendedRecipesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetRecommendedRecipesCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_GetRecommendedRecipes>
    implements _$$_GetRecommendedRecipesCopyWith<$Res> {
  __$$_GetRecommendedRecipesCopyWithImpl(_$_GetRecommendedRecipes _value,
      $Res Function(_$_GetRecommendedRecipes) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetRecommendedRecipes implements _GetRecommendedRecipes {
  const _$_GetRecommendedRecipes();

  @override
  String toString() {
    return 'HomeEvent.getRecommendedRecipes()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetRecommendedRecipes);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRecommendedRecipes,
  }) {
    return getRecommendedRecipes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRecommendedRecipes,
  }) {
    return getRecommendedRecipes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRecommendedRecipes,
    required TResult orElse(),
  }) {
    if (getRecommendedRecipes != null) {
      return getRecommendedRecipes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRecommendedRecipes value)
        getRecommendedRecipes,
  }) {
    return getRecommendedRecipes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRecommendedRecipes value)? getRecommendedRecipes,
  }) {
    return getRecommendedRecipes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRecommendedRecipes value)? getRecommendedRecipes,
    required TResult orElse(),
  }) {
    if (getRecommendedRecipes != null) {
      return getRecommendedRecipes(this);
    }
    return orElse();
  }
}

abstract class _GetRecommendedRecipes implements HomeEvent {
  const factory _GetRecommendedRecipes() = _$_GetRecommendedRecipes;
}

/// @nodoc
mixin _$HomeState {
  List<RecipeModel>? get recommendedRecipes =>
      throw _privateConstructorUsedError;
  QueryStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({List<RecipeModel>? recommendedRecipes, QueryStatus status});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recommendedRecipes = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      recommendedRecipes: freezed == recommendedRecipes
          ? _value.recommendedRecipes
          : recommendedRecipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeModel>?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QueryStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RecipeModel>? recommendedRecipes, QueryStatus status});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recommendedRecipes = freezed,
    Object? status = null,
  }) {
    return _then(_$_HomeState(
      recommendedRecipes: freezed == recommendedRecipes
          ? _value._recommendedRecipes
          : recommendedRecipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeModel>?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QueryStatus,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {final List<RecipeModel>? recommendedRecipes,
      this.status = QueryStatus.loading})
      : _recommendedRecipes = recommendedRecipes;

  final List<RecipeModel>? _recommendedRecipes;
  @override
  List<RecipeModel>? get recommendedRecipes {
    final value = _recommendedRecipes;
    if (value == null) return null;
    if (_recommendedRecipes is EqualUnmodifiableListView)
      return _recommendedRecipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final QueryStatus status;

  @override
  String toString() {
    return 'HomeState(recommendedRecipes: $recommendedRecipes, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            const DeepCollectionEquality()
                .equals(other._recommendedRecipes, _recommendedRecipes) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_recommendedRecipes), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final List<RecipeModel>? recommendedRecipes,
      final QueryStatus status}) = _$_HomeState;

  @override
  List<RecipeModel>? get recommendedRecipes;
  @override
  QueryStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
