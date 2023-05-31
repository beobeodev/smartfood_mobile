// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_list.bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecipeListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> ingredientIds) getByIngredients,
    required TResult Function() getAll,
    required TResult Function() refresh,
    required TResult Function() loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> ingredientIds)? getByIngredients,
    TResult? Function()? getAll,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> ingredientIds)? getByIngredients,
    TResult Function()? getAll,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetByIngredients value) getByIngredients,
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_LoadMore value) loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetByIngredients value)? getByIngredients,
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_LoadMore value)? loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetByIngredients value)? getByIngredients,
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeListEventCopyWith<$Res> {
  factory $RecipeListEventCopyWith(
          RecipeListEvent value, $Res Function(RecipeListEvent) then) =
      _$RecipeListEventCopyWithImpl<$Res, RecipeListEvent>;
}

/// @nodoc
class _$RecipeListEventCopyWithImpl<$Res, $Val extends RecipeListEvent>
    implements $RecipeListEventCopyWith<$Res> {
  _$RecipeListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetByIngredientsCopyWith<$Res> {
  factory _$$_GetByIngredientsCopyWith(
          _$_GetByIngredients value, $Res Function(_$_GetByIngredients) then) =
      __$$_GetByIngredientsCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> ingredientIds});
}

/// @nodoc
class __$$_GetByIngredientsCopyWithImpl<$Res>
    extends _$RecipeListEventCopyWithImpl<$Res, _$_GetByIngredients>
    implements _$$_GetByIngredientsCopyWith<$Res> {
  __$$_GetByIngredientsCopyWithImpl(
      _$_GetByIngredients _value, $Res Function(_$_GetByIngredients) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredientIds = null,
  }) {
    return _then(_$_GetByIngredients(
      null == ingredientIds
          ? _value._ingredientIds
          : ingredientIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_GetByIngredients implements _GetByIngredients {
  const _$_GetByIngredients(final List<String> ingredientIds)
      : _ingredientIds = ingredientIds;

  final List<String> _ingredientIds;
  @override
  List<String> get ingredientIds {
    if (_ingredientIds is EqualUnmodifiableListView) return _ingredientIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredientIds);
  }

  @override
  String toString() {
    return 'RecipeListEvent.getByIngredients(ingredientIds: $ingredientIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetByIngredients &&
            const DeepCollectionEquality()
                .equals(other._ingredientIds, _ingredientIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_ingredientIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetByIngredientsCopyWith<_$_GetByIngredients> get copyWith =>
      __$$_GetByIngredientsCopyWithImpl<_$_GetByIngredients>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> ingredientIds) getByIngredients,
    required TResult Function() getAll,
    required TResult Function() refresh,
    required TResult Function() loadMore,
  }) {
    return getByIngredients(ingredientIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> ingredientIds)? getByIngredients,
    TResult? Function()? getAll,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
  }) {
    return getByIngredients?.call(ingredientIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> ingredientIds)? getByIngredients,
    TResult Function()? getAll,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) {
    if (getByIngredients != null) {
      return getByIngredients(ingredientIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetByIngredients value) getByIngredients,
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_LoadMore value) loadMore,
  }) {
    return getByIngredients(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetByIngredients value)? getByIngredients,
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_LoadMore value)? loadMore,
  }) {
    return getByIngredients?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetByIngredients value)? getByIngredients,
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (getByIngredients != null) {
      return getByIngredients(this);
    }
    return orElse();
  }
}

abstract class _GetByIngredients implements RecipeListEvent {
  const factory _GetByIngredients(final List<String> ingredientIds) =
      _$_GetByIngredients;

  List<String> get ingredientIds;
  @JsonKey(ignore: true)
  _$$_GetByIngredientsCopyWith<_$_GetByIngredients> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetAllCopyWith<$Res> {
  factory _$$_GetAllCopyWith(_$_GetAll value, $Res Function(_$_GetAll) then) =
      __$$_GetAllCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetAllCopyWithImpl<$Res>
    extends _$RecipeListEventCopyWithImpl<$Res, _$_GetAll>
    implements _$$_GetAllCopyWith<$Res> {
  __$$_GetAllCopyWithImpl(_$_GetAll _value, $Res Function(_$_GetAll) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetAll implements _GetAll {
  const _$_GetAll();

  @override
  String toString() {
    return 'RecipeListEvent.getAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> ingredientIds) getByIngredients,
    required TResult Function() getAll,
    required TResult Function() refresh,
    required TResult Function() loadMore,
  }) {
    return getAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> ingredientIds)? getByIngredients,
    TResult? Function()? getAll,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
  }) {
    return getAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> ingredientIds)? getByIngredients,
    TResult Function()? getAll,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetByIngredients value) getByIngredients,
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_LoadMore value) loadMore,
  }) {
    return getAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetByIngredients value)? getByIngredients,
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_LoadMore value)? loadMore,
  }) {
    return getAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetByIngredients value)? getByIngredients,
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll(this);
    }
    return orElse();
  }
}

abstract class _GetAll implements RecipeListEvent {
  const factory _GetAll() = _$_GetAll;
}

/// @nodoc
abstract class _$$_RefreshCopyWith<$Res> {
  factory _$$_RefreshCopyWith(
          _$_Refresh value, $Res Function(_$_Refresh) then) =
      __$$_RefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RefreshCopyWithImpl<$Res>
    extends _$RecipeListEventCopyWithImpl<$Res, _$_Refresh>
    implements _$$_RefreshCopyWith<$Res> {
  __$$_RefreshCopyWithImpl(_$_Refresh _value, $Res Function(_$_Refresh) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Refresh implements _Refresh {
  const _$_Refresh();

  @override
  String toString() {
    return 'RecipeListEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Refresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> ingredientIds) getByIngredients,
    required TResult Function() getAll,
    required TResult Function() refresh,
    required TResult Function() loadMore,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> ingredientIds)? getByIngredients,
    TResult? Function()? getAll,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> ingredientIds)? getByIngredients,
    TResult Function()? getAll,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetByIngredients value) getByIngredients,
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_LoadMore value) loadMore,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetByIngredients value)? getByIngredients,
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_LoadMore value)? loadMore,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetByIngredients value)? getByIngredients,
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements RecipeListEvent {
  const factory _Refresh() = _$_Refresh;
}

/// @nodoc
abstract class _$$_LoadMoreCopyWith<$Res> {
  factory _$$_LoadMoreCopyWith(
          _$_LoadMore value, $Res Function(_$_LoadMore) then) =
      __$$_LoadMoreCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadMoreCopyWithImpl<$Res>
    extends _$RecipeListEventCopyWithImpl<$Res, _$_LoadMore>
    implements _$$_LoadMoreCopyWith<$Res> {
  __$$_LoadMoreCopyWithImpl(
      _$_LoadMore _value, $Res Function(_$_LoadMore) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadMore implements _LoadMore {
  const _$_LoadMore();

  @override
  String toString() {
    return 'RecipeListEvent.loadMore()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadMore);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> ingredientIds) getByIngredients,
    required TResult Function() getAll,
    required TResult Function() refresh,
    required TResult Function() loadMore,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> ingredientIds)? getByIngredients,
    TResult? Function()? getAll,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
  }) {
    return loadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> ingredientIds)? getByIngredients,
    TResult Function()? getAll,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetByIngredients value) getByIngredients,
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_LoadMore value) loadMore,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetByIngredients value)? getByIngredients,
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_LoadMore value)? loadMore,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetByIngredients value)? getByIngredients,
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class _LoadMore implements RecipeListEvent {
  const factory _LoadMore() = _$_LoadMore;
}

/// @nodoc
mixin _$RecipeListState {
  QueryDataStatusDTO get queryStatus => throw _privateConstructorUsedError;
  List<RecipeModel>? get recipes => throw _privateConstructorUsedError;
  QueryRecipesDTO get queryDto => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeListStateCopyWith<RecipeListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeListStateCopyWith<$Res> {
  factory $RecipeListStateCopyWith(
          RecipeListState value, $Res Function(RecipeListState) then) =
      _$RecipeListStateCopyWithImpl<$Res, RecipeListState>;
  @useResult
  $Res call(
      {QueryDataStatusDTO queryStatus,
      List<RecipeModel>? recipes,
      QueryRecipesDTO queryDto});

  $QueryDataStatusDTOCopyWith<$Res> get queryStatus;
  $QueryRecipesDTOCopyWith<$Res> get queryDto;
}

/// @nodoc
class _$RecipeListStateCopyWithImpl<$Res, $Val extends RecipeListState>
    implements $RecipeListStateCopyWith<$Res> {
  _$RecipeListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryStatus = null,
    Object? recipes = freezed,
    Object? queryDto = null,
  }) {
    return _then(_value.copyWith(
      queryStatus: null == queryStatus
          ? _value.queryStatus
          : queryStatus // ignore: cast_nullable_to_non_nullable
              as QueryDataStatusDTO,
      recipes: freezed == recipes
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeModel>?,
      queryDto: null == queryDto
          ? _value.queryDto
          : queryDto // ignore: cast_nullable_to_non_nullable
              as QueryRecipesDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QueryDataStatusDTOCopyWith<$Res> get queryStatus {
    return $QueryDataStatusDTOCopyWith<$Res>(_value.queryStatus, (value) {
      return _then(_value.copyWith(queryStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QueryRecipesDTOCopyWith<$Res> get queryDto {
    return $QueryRecipesDTOCopyWith<$Res>(_value.queryDto, (value) {
      return _then(_value.copyWith(queryDto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RecipeListStateCopyWith<$Res>
    implements $RecipeListStateCopyWith<$Res> {
  factory _$$_RecipeListStateCopyWith(
          _$_RecipeListState value, $Res Function(_$_RecipeListState) then) =
      __$$_RecipeListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {QueryDataStatusDTO queryStatus,
      List<RecipeModel>? recipes,
      QueryRecipesDTO queryDto});

  @override
  $QueryDataStatusDTOCopyWith<$Res> get queryStatus;
  @override
  $QueryRecipesDTOCopyWith<$Res> get queryDto;
}

/// @nodoc
class __$$_RecipeListStateCopyWithImpl<$Res>
    extends _$RecipeListStateCopyWithImpl<$Res, _$_RecipeListState>
    implements _$$_RecipeListStateCopyWith<$Res> {
  __$$_RecipeListStateCopyWithImpl(
      _$_RecipeListState _value, $Res Function(_$_RecipeListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryStatus = null,
    Object? recipes = freezed,
    Object? queryDto = null,
  }) {
    return _then(_$_RecipeListState(
      queryStatus: null == queryStatus
          ? _value.queryStatus
          : queryStatus // ignore: cast_nullable_to_non_nullable
              as QueryDataStatusDTO,
      recipes: freezed == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeModel>?,
      queryDto: null == queryDto
          ? _value.queryDto
          : queryDto // ignore: cast_nullable_to_non_nullable
              as QueryRecipesDTO,
    ));
  }
}

/// @nodoc

class _$_RecipeListState implements _RecipeListState {
  const _$_RecipeListState(
      {required this.queryStatus,
      final List<RecipeModel>? recipes,
      required this.queryDto})
      : _recipes = recipes;

  @override
  final QueryDataStatusDTO queryStatus;
  final List<RecipeModel>? _recipes;
  @override
  List<RecipeModel>? get recipes {
    final value = _recipes;
    if (value == null) return null;
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final QueryRecipesDTO queryDto;

  @override
  String toString() {
    return 'RecipeListState(queryStatus: $queryStatus, recipes: $recipes, queryDto: $queryDto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeListState &&
            (identical(other.queryStatus, queryStatus) ||
                other.queryStatus == queryStatus) &&
            const DeepCollectionEquality().equals(other._recipes, _recipes) &&
            (identical(other.queryDto, queryDto) ||
                other.queryDto == queryDto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, queryStatus,
      const DeepCollectionEquality().hash(_recipes), queryDto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeListStateCopyWith<_$_RecipeListState> get copyWith =>
      __$$_RecipeListStateCopyWithImpl<_$_RecipeListState>(this, _$identity);
}

abstract class _RecipeListState implements RecipeListState {
  const factory _RecipeListState(
      {required final QueryDataStatusDTO queryStatus,
      final List<RecipeModel>? recipes,
      required final QueryRecipesDTO queryDto}) = _$_RecipeListState;

  @override
  QueryDataStatusDTO get queryStatus;
  @override
  List<RecipeModel>? get recipes;
  @override
  QueryRecipesDTO get queryDto;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeListStateCopyWith<_$_RecipeListState> get copyWith =>
      throw _privateConstructorUsedError;
}
