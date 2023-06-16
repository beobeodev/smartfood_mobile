// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_ingredient.bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchIngredientEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? searchKey) getAll,
    required TResult Function() refresh,
    required TResult Function() loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? searchKey)? getAll,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? searchKey)? getAll,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_LoadMore value) loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_LoadMore value)? loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchIngredientEventCopyWith<$Res> {
  factory $SearchIngredientEventCopyWith(SearchIngredientEvent value,
          $Res Function(SearchIngredientEvent) then) =
      _$SearchIngredientEventCopyWithImpl<$Res, SearchIngredientEvent>;
}

/// @nodoc
class _$SearchIngredientEventCopyWithImpl<$Res,
        $Val extends SearchIngredientEvent>
    implements $SearchIngredientEventCopyWith<$Res> {
  _$SearchIngredientEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetAllCopyWith<$Res> {
  factory _$$_GetAllCopyWith(_$_GetAll value, $Res Function(_$_GetAll) then) =
      __$$_GetAllCopyWithImpl<$Res>;
  @useResult
  $Res call({String? searchKey});
}

/// @nodoc
class __$$_GetAllCopyWithImpl<$Res>
    extends _$SearchIngredientEventCopyWithImpl<$Res, _$_GetAll>
    implements _$$_GetAllCopyWith<$Res> {
  __$$_GetAllCopyWithImpl(_$_GetAll _value, $Res Function(_$_GetAll) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchKey = freezed,
  }) {
    return _then(_$_GetAll(
      searchKey: freezed == searchKey
          ? _value.searchKey
          : searchKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_GetAll implements _GetAll {
  const _$_GetAll({this.searchKey});

  @override
  final String? searchKey;

  @override
  String toString() {
    return 'SearchIngredientEvent.getAll(searchKey: $searchKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetAll &&
            (identical(other.searchKey, searchKey) ||
                other.searchKey == searchKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetAllCopyWith<_$_GetAll> get copyWith =>
      __$$_GetAllCopyWithImpl<_$_GetAll>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? searchKey) getAll,
    required TResult Function() refresh,
    required TResult Function() loadMore,
  }) {
    return getAll(searchKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? searchKey)? getAll,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
  }) {
    return getAll?.call(searchKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? searchKey)? getAll,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll(searchKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_LoadMore value) loadMore,
  }) {
    return getAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_LoadMore value)? loadMore,
  }) {
    return getAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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

abstract class _GetAll implements SearchIngredientEvent {
  const factory _GetAll({final String? searchKey}) = _$_GetAll;

  String? get searchKey;
  @JsonKey(ignore: true)
  _$$_GetAllCopyWith<_$_GetAll> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RefreshCopyWith<$Res> {
  factory _$$_RefreshCopyWith(
          _$_Refresh value, $Res Function(_$_Refresh) then) =
      __$$_RefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RefreshCopyWithImpl<$Res>
    extends _$SearchIngredientEventCopyWithImpl<$Res, _$_Refresh>
    implements _$$_RefreshCopyWith<$Res> {
  __$$_RefreshCopyWithImpl(_$_Refresh _value, $Res Function(_$_Refresh) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Refresh implements _Refresh {
  const _$_Refresh();

  @override
  String toString() {
    return 'SearchIngredientEvent.refresh()';
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
    required TResult Function(String? searchKey) getAll,
    required TResult Function() refresh,
    required TResult Function() loadMore,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? searchKey)? getAll,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? searchKey)? getAll,
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
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_LoadMore value) loadMore,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_LoadMore value)? loadMore,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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

abstract class _Refresh implements SearchIngredientEvent {
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
    extends _$SearchIngredientEventCopyWithImpl<$Res, _$_LoadMore>
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
    return 'SearchIngredientEvent.loadMore()';
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
    required TResult Function(String? searchKey) getAll,
    required TResult Function() refresh,
    required TResult Function() loadMore,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? searchKey)? getAll,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
  }) {
    return loadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? searchKey)? getAll,
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
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_LoadMore value) loadMore,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_LoadMore value)? loadMore,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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

abstract class _LoadMore implements SearchIngredientEvent {
  const factory _LoadMore() = _$_LoadMore;
}

/// @nodoc
mixin _$SearchIngredientState {
  PaginationQueryDTO<dynamic> get paginationDto =>
      throw _privateConstructorUsedError;
  QueryDataInfo get queryInfo => throw _privateConstructorUsedError;
  List<IngredientModel>? get ingredients => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchIngredientStateCopyWith<SearchIngredientState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchIngredientStateCopyWith<$Res> {
  factory $SearchIngredientStateCopyWith(SearchIngredientState value,
          $Res Function(SearchIngredientState) then) =
      _$SearchIngredientStateCopyWithImpl<$Res, SearchIngredientState>;
  @useResult
  $Res call(
      {PaginationQueryDTO<dynamic> paginationDto,
      QueryDataInfo queryInfo,
      List<IngredientModel>? ingredients});

  $PaginationQueryDTOCopyWith<dynamic, $Res> get paginationDto;
  $QueryDataInfoCopyWith<$Res> get queryInfo;
}

/// @nodoc
class _$SearchIngredientStateCopyWithImpl<$Res,
        $Val extends SearchIngredientState>
    implements $SearchIngredientStateCopyWith<$Res> {
  _$SearchIngredientStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paginationDto = null,
    Object? queryInfo = null,
    Object? ingredients = freezed,
  }) {
    return _then(_value.copyWith(
      paginationDto: null == paginationDto
          ? _value.paginationDto
          : paginationDto // ignore: cast_nullable_to_non_nullable
              as PaginationQueryDTO<dynamic>,
      queryInfo: null == queryInfo
          ? _value.queryInfo
          : queryInfo // ignore: cast_nullable_to_non_nullable
              as QueryDataInfo,
      ingredients: freezed == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<IngredientModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationQueryDTOCopyWith<dynamic, $Res> get paginationDto {
    return $PaginationQueryDTOCopyWith<dynamic, $Res>(_value.paginationDto,
        (value) {
      return _then(_value.copyWith(paginationDto: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QueryDataInfoCopyWith<$Res> get queryInfo {
    return $QueryDataInfoCopyWith<$Res>(_value.queryInfo, (value) {
      return _then(_value.copyWith(queryInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SearchIngredientStateCopyWith<$Res>
    implements $SearchIngredientStateCopyWith<$Res> {
  factory _$$_SearchIngredientStateCopyWith(_$_SearchIngredientState value,
          $Res Function(_$_SearchIngredientState) then) =
      __$$_SearchIngredientStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PaginationQueryDTO<dynamic> paginationDto,
      QueryDataInfo queryInfo,
      List<IngredientModel>? ingredients});

  @override
  $PaginationQueryDTOCopyWith<dynamic, $Res> get paginationDto;
  @override
  $QueryDataInfoCopyWith<$Res> get queryInfo;
}

/// @nodoc
class __$$_SearchIngredientStateCopyWithImpl<$Res>
    extends _$SearchIngredientStateCopyWithImpl<$Res, _$_SearchIngredientState>
    implements _$$_SearchIngredientStateCopyWith<$Res> {
  __$$_SearchIngredientStateCopyWithImpl(_$_SearchIngredientState _value,
      $Res Function(_$_SearchIngredientState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paginationDto = null,
    Object? queryInfo = null,
    Object? ingredients = freezed,
  }) {
    return _then(_$_SearchIngredientState(
      paginationDto: null == paginationDto
          ? _value.paginationDto
          : paginationDto // ignore: cast_nullable_to_non_nullable
              as PaginationQueryDTO<dynamic>,
      queryInfo: null == queryInfo
          ? _value.queryInfo
          : queryInfo // ignore: cast_nullable_to_non_nullable
              as QueryDataInfo,
      ingredients: freezed == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<IngredientModel>?,
    ));
  }
}

/// @nodoc

class _$_SearchIngredientState implements _SearchIngredientState {
  const _$_SearchIngredientState(
      {required this.paginationDto,
      required this.queryInfo,
      final List<IngredientModel>? ingredients})
      : _ingredients = ingredients;

  @override
  final PaginationQueryDTO<dynamic> paginationDto;
  @override
  final QueryDataInfo queryInfo;
  final List<IngredientModel>? _ingredients;
  @override
  List<IngredientModel>? get ingredients {
    final value = _ingredients;
    if (value == null) return null;
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchIngredientState(paginationDto: $paginationDto, queryInfo: $queryInfo, ingredients: $ingredients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchIngredientState &&
            (identical(other.paginationDto, paginationDto) ||
                other.paginationDto == paginationDto) &&
            (identical(other.queryInfo, queryInfo) ||
                other.queryInfo == queryInfo) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paginationDto, queryInfo,
      const DeepCollectionEquality().hash(_ingredients));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchIngredientStateCopyWith<_$_SearchIngredientState> get copyWith =>
      __$$_SearchIngredientStateCopyWithImpl<_$_SearchIngredientState>(
          this, _$identity);
}

abstract class _SearchIngredientState implements SearchIngredientState {
  const factory _SearchIngredientState(
      {required final PaginationQueryDTO<dynamic> paginationDto,
      required final QueryDataInfo queryInfo,
      final List<IngredientModel>? ingredients}) = _$_SearchIngredientState;

  @override
  PaginationQueryDTO<dynamic> get paginationDto;
  @override
  QueryDataInfo get queryInfo;
  @override
  List<IngredientModel>? get ingredients;
  @override
  @JsonKey(ignore: true)
  _$$_SearchIngredientStateCopyWith<_$_SearchIngredientState> get copyWith =>
      throw _privateConstructorUsedError;
}
