// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_filter.bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecipeFilterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeFilterEventCopyWith<$Res> {
  factory $RecipeFilterEventCopyWith(
          RecipeFilterEvent value, $Res Function(RecipeFilterEvent) then) =
      _$RecipeFilterEventCopyWithImpl<$Res, RecipeFilterEvent>;
}

/// @nodoc
class _$RecipeFilterEventCopyWithImpl<$Res, $Val extends RecipeFilterEvent>
    implements $RecipeFilterEventCopyWith<$Res> {
  _$RecipeFilterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$RecipeFilterEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'RecipeFilterEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements RecipeFilterEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
mixin _$RecipeFilterState {
  List<CategoryModel> get categories => throw _privateConstructorUsedError;
  List<CuisineModel> get cuisines => throw _privateConstructorUsedError;
  List<LevelModel> get levels => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeFilterStateCopyWith<RecipeFilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeFilterStateCopyWith<$Res> {
  factory $RecipeFilterStateCopyWith(
          RecipeFilterState value, $Res Function(RecipeFilterState) then) =
      _$RecipeFilterStateCopyWithImpl<$Res, RecipeFilterState>;
  @useResult
  $Res call(
      {List<CategoryModel> categories,
      List<CuisineModel> cuisines,
      List<LevelModel> levels});
}

/// @nodoc
class _$RecipeFilterStateCopyWithImpl<$Res, $Val extends RecipeFilterState>
    implements $RecipeFilterStateCopyWith<$Res> {
  _$RecipeFilterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? cuisines = null,
    Object? levels = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      cuisines: null == cuisines
          ? _value.cuisines
          : cuisines // ignore: cast_nullable_to_non_nullable
              as List<CuisineModel>,
      levels: null == levels
          ? _value.levels
          : levels // ignore: cast_nullable_to_non_nullable
              as List<LevelModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecipeFilterStateCopyWith<$Res>
    implements $RecipeFilterStateCopyWith<$Res> {
  factory _$$_RecipeFilterStateCopyWith(_$_RecipeFilterState value,
          $Res Function(_$_RecipeFilterState) then) =
      __$$_RecipeFilterStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CategoryModel> categories,
      List<CuisineModel> cuisines,
      List<LevelModel> levels});
}

/// @nodoc
class __$$_RecipeFilterStateCopyWithImpl<$Res>
    extends _$RecipeFilterStateCopyWithImpl<$Res, _$_RecipeFilterState>
    implements _$$_RecipeFilterStateCopyWith<$Res> {
  __$$_RecipeFilterStateCopyWithImpl(
      _$_RecipeFilterState _value, $Res Function(_$_RecipeFilterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? cuisines = null,
    Object? levels = null,
  }) {
    return _then(_$_RecipeFilterState(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      cuisines: null == cuisines
          ? _value._cuisines
          : cuisines // ignore: cast_nullable_to_non_nullable
              as List<CuisineModel>,
      levels: null == levels
          ? _value._levels
          : levels // ignore: cast_nullable_to_non_nullable
              as List<LevelModel>,
    ));
  }
}

/// @nodoc

class _$_RecipeFilterState implements _RecipeFilterState {
  const _$_RecipeFilterState(
      {final List<CategoryModel> categories = const [],
      final List<CuisineModel> cuisines = const [],
      final List<LevelModel> levels = const []})
      : _categories = categories,
        _cuisines = cuisines,
        _levels = levels;

  final List<CategoryModel> _categories;
  @override
  @JsonKey()
  List<CategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<CuisineModel> _cuisines;
  @override
  @JsonKey()
  List<CuisineModel> get cuisines {
    if (_cuisines is EqualUnmodifiableListView) return _cuisines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cuisines);
  }

  final List<LevelModel> _levels;
  @override
  @JsonKey()
  List<LevelModel> get levels {
    if (_levels is EqualUnmodifiableListView) return _levels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_levels);
  }

  @override
  String toString() {
    return 'RecipeFilterState(categories: $categories, cuisines: $cuisines, levels: $levels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeFilterState &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._cuisines, _cuisines) &&
            const DeepCollectionEquality().equals(other._levels, _levels));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_cuisines),
      const DeepCollectionEquality().hash(_levels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeFilterStateCopyWith<_$_RecipeFilterState> get copyWith =>
      __$$_RecipeFilterStateCopyWithImpl<_$_RecipeFilterState>(
          this, _$identity);
}

abstract class _RecipeFilterState implements RecipeFilterState {
  const factory _RecipeFilterState(
      {final List<CategoryModel> categories,
      final List<CuisineModel> cuisines,
      final List<LevelModel> levels}) = _$_RecipeFilterState;

  @override
  List<CategoryModel> get categories;
  @override
  List<CuisineModel> get cuisines;
  @override
  List<LevelModel> get levels;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeFilterStateCopyWith<_$_RecipeFilterState> get copyWith =>
      throw _privateConstructorUsedError;
}
