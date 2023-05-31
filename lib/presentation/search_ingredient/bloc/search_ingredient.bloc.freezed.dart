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
    required TResult Function() started,
    required TResult Function(String text) searched,
    required TResult Function(List<String> filters) filtered,
    required TResult Function() refresh,
    required TResult Function() loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String text)? searched,
    TResult? Function(List<String> filters)? filtered,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String text)? searched,
    TResult Function(List<String> filters)? filtered,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Searched value) searched,
    required TResult Function(_Filtered value) filtered,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_LoadMore value) loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_Filtered value)? filtered,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_LoadMore value)? loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Searched value)? searched,
    TResult Function(_Filtered value)? filtered,
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
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$SearchIngredientEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'SearchIngredientEvent.started()';
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
    required TResult Function(String text) searched,
    required TResult Function(List<String> filters) filtered,
    required TResult Function() refresh,
    required TResult Function() loadMore,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String text)? searched,
    TResult? Function(List<String> filters)? filtered,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String text)? searched,
    TResult Function(List<String> filters)? filtered,
    TResult Function()? refresh,
    TResult Function()? loadMore,
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
    required TResult Function(_Searched value) searched,
    required TResult Function(_Filtered value) filtered,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_LoadMore value) loadMore,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_Filtered value)? filtered,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_LoadMore value)? loadMore,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Searched value)? searched,
    TResult Function(_Filtered value)? filtered,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SearchIngredientEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_SearchedCopyWith<$Res> {
  factory _$$_SearchedCopyWith(
          _$_Searched value, $Res Function(_$_Searched) then) =
      __$$_SearchedCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_SearchedCopyWithImpl<$Res>
    extends _$SearchIngredientEventCopyWithImpl<$Res, _$_Searched>
    implements _$$_SearchedCopyWith<$Res> {
  __$$_SearchedCopyWithImpl(
      _$_Searched _value, $Res Function(_$_Searched) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_Searched(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Searched implements _Searched {
  const _$_Searched({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'SearchIngredientEvent.searched(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Searched &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchedCopyWith<_$_Searched> get copyWith =>
      __$$_SearchedCopyWithImpl<_$_Searched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String text) searched,
    required TResult Function(List<String> filters) filtered,
    required TResult Function() refresh,
    required TResult Function() loadMore,
  }) {
    return searched(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String text)? searched,
    TResult? Function(List<String> filters)? filtered,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
  }) {
    return searched?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String text)? searched,
    TResult Function(List<String> filters)? filtered,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) {
    if (searched != null) {
      return searched(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Searched value) searched,
    required TResult Function(_Filtered value) filtered,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_LoadMore value) loadMore,
  }) {
    return searched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_Filtered value)? filtered,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_LoadMore value)? loadMore,
  }) {
    return searched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Searched value)? searched,
    TResult Function(_Filtered value)? filtered,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (searched != null) {
      return searched(this);
    }
    return orElse();
  }
}

abstract class _Searched implements SearchIngredientEvent {
  const factory _Searched({required final String text}) = _$_Searched;

  String get text;
  @JsonKey(ignore: true)
  _$$_SearchedCopyWith<_$_Searched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FilteredCopyWith<$Res> {
  factory _$$_FilteredCopyWith(
          _$_Filtered value, $Res Function(_$_Filtered) then) =
      __$$_FilteredCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> filters});
}

/// @nodoc
class __$$_FilteredCopyWithImpl<$Res>
    extends _$SearchIngredientEventCopyWithImpl<$Res, _$_Filtered>
    implements _$$_FilteredCopyWith<$Res> {
  __$$_FilteredCopyWithImpl(
      _$_Filtered _value, $Res Function(_$_Filtered) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
  }) {
    return _then(_$_Filtered(
      filters: null == filters
          ? _value._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_Filtered implements _Filtered {
  const _$_Filtered({required final List<String> filters}) : _filters = filters;

  final List<String> _filters;
  @override
  List<String> get filters {
    if (_filters is EqualUnmodifiableListView) return _filters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filters);
  }

  @override
  String toString() {
    return 'SearchIngredientEvent.filtered(filters: $filters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Filtered &&
            const DeepCollectionEquality().equals(other._filters, _filters));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_filters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilteredCopyWith<_$_Filtered> get copyWith =>
      __$$_FilteredCopyWithImpl<_$_Filtered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String text) searched,
    required TResult Function(List<String> filters) filtered,
    required TResult Function() refresh,
    required TResult Function() loadMore,
  }) {
    return filtered(filters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String text)? searched,
    TResult? Function(List<String> filters)? filtered,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
  }) {
    return filtered?.call(filters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String text)? searched,
    TResult Function(List<String> filters)? filtered,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) {
    if (filtered != null) {
      return filtered(filters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Searched value) searched,
    required TResult Function(_Filtered value) filtered,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_LoadMore value) loadMore,
  }) {
    return filtered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_Filtered value)? filtered,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_LoadMore value)? loadMore,
  }) {
    return filtered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Searched value)? searched,
    TResult Function(_Filtered value)? filtered,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (filtered != null) {
      return filtered(this);
    }
    return orElse();
  }
}

abstract class _Filtered implements SearchIngredientEvent {
  const factory _Filtered({required final List<String> filters}) = _$_Filtered;

  List<String> get filters;
  @JsonKey(ignore: true)
  _$$_FilteredCopyWith<_$_Filtered> get copyWith =>
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
    required TResult Function() started,
    required TResult Function(String text) searched,
    required TResult Function(List<String> filters) filtered,
    required TResult Function() refresh,
    required TResult Function() loadMore,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String text)? searched,
    TResult? Function(List<String> filters)? filtered,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String text)? searched,
    TResult Function(List<String> filters)? filtered,
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
    required TResult Function(_Started value) started,
    required TResult Function(_Searched value) searched,
    required TResult Function(_Filtered value) filtered,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_LoadMore value) loadMore,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_Filtered value)? filtered,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_LoadMore value)? loadMore,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Searched value)? searched,
    TResult Function(_Filtered value)? filtered,
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
    required TResult Function() started,
    required TResult Function(String text) searched,
    required TResult Function(List<String> filters) filtered,
    required TResult Function() refresh,
    required TResult Function() loadMore,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String text)? searched,
    TResult? Function(List<String> filters)? filtered,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
  }) {
    return loadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String text)? searched,
    TResult Function(List<String> filters)? filtered,
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
    required TResult Function(_Started value) started,
    required TResult Function(_Searched value) searched,
    required TResult Function(_Filtered value) filtered,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_LoadMore value) loadMore,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_Filtered value)? filtered,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_LoadMore value)? loadMore,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Searched value)? searched,
    TResult Function(_Filtered value)? filtered,
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
  PaginationQueryDTO get query => throw _privateConstructorUsedError;
  QueryType get getType => throw _privateConstructorUsedError;
  List<IngredientModel>? get ingredients => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaginationQueryDTO query, QueryType getType,
            List<IngredientModel>? ingredients)
        loading,
    required TResult Function(PaginationQueryDTO query, QueryType getType,
            List<IngredientModel> ingredients, bool canLoadMore)
        success,
    required TResult Function(PaginationQueryDTO query, QueryType getType,
            List<IngredientModel>? ingredients, QueryErrorType errorType)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaginationQueryDTO query, QueryType getType,
            List<IngredientModel>? ingredients)?
        loading,
    TResult? Function(PaginationQueryDTO query, QueryType getType,
            List<IngredientModel> ingredients, bool canLoadMore)?
        success,
    TResult? Function(PaginationQueryDTO query, QueryType getType,
            List<IngredientModel>? ingredients, QueryErrorType errorType)?
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaginationQueryDTO query, QueryType getType,
            List<IngredientModel>? ingredients)?
        loading,
    TResult Function(PaginationQueryDTO query, QueryType getType,
            List<IngredientModel> ingredients, bool canLoadMore)?
        success,
    TResult Function(PaginationQueryDTO query, QueryType getType,
            List<IngredientModel>? ingredients, QueryErrorType errorType)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(SearchIngredientSuccess value) success,
    required TResult Function(SearchIngredientFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(SearchIngredientSuccess value)? success,
    TResult? Function(SearchIngredientFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(SearchIngredientSuccess value)? success,
    TResult Function(SearchIngredientFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

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
      {PaginationQueryDTO query,
      QueryType getType,
      List<IngredientModel> ingredients});

  $PaginationQueryDTOCopyWith<$Res> get query;
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
    Object? query = null,
    Object? getType = null,
    Object? ingredients = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as PaginationQueryDTO,
      getType: null == getType
          ? _value.getType
          : getType // ignore: cast_nullable_to_non_nullable
              as QueryType,
      ingredients: null == ingredients
          ? _value.ingredients!
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<IngredientModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationQueryDTOCopyWith<$Res> get query {
    return $PaginationQueryDTOCopyWith<$Res>(_value.query, (value) {
      return _then(_value.copyWith(query: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $SearchIngredientStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PaginationQueryDTO query,
      QueryType getType,
      List<IngredientModel>? ingredients});

  @override
  $PaginationQueryDTOCopyWith<$Res> get query;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$SearchIngredientStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? getType = null,
    Object? ingredients = freezed,
  }) {
    return _then(_$_Loading(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as PaginationQueryDTO,
      getType: null == getType
          ? _value.getType
          : getType // ignore: cast_nullable_to_non_nullable
              as QueryType,
      ingredients: freezed == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<IngredientModel>?,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading(
      {required this.query,
      this.getType = QueryType.initial,
      final List<IngredientModel>? ingredients})
      : _ingredients = ingredients;

  @override
  final PaginationQueryDTO query;
  @override
  @JsonKey()
  final QueryType getType;
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
    return 'SearchIngredientState.loading(query: $query, getType: $getType, ingredients: $ingredients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.getType, getType) || other.getType == getType) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, getType,
      const DeepCollectionEquality().hash(_ingredients));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaginationQueryDTO query, QueryType getType,
            List<IngredientModel>? ingredients)
        loading,
    required TResult Function(PaginationQueryDTO query, QueryType getType,
            List<IngredientModel> ingredients, bool canLoadMore)
        success,
    required TResult Function(PaginationQueryDTO query, QueryType getType,
            List<IngredientModel>? ingredients, QueryErrorType errorType)
        failure,
  }) {
    return loading(query, getType, ingredients);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaginationQueryDTO query, QueryType getType,
            List<IngredientModel>? ingredients)?
        loading,
    TResult? Function(PaginationQueryDTO query, QueryType getType,
            List<IngredientModel> ingredients, bool canLoadMore)?
        success,
    TResult? Function(PaginationQueryDTO query, QueryType getType,
            List<IngredientModel>? ingredients, QueryErrorType errorType)?
        failure,
  }) {
    return loading?.call(query, getType, ingredients);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaginationQueryDTO query, QueryType getType,
            List<IngredientModel>? ingredients)?
        loading,
    TResult Function(PaginationQueryDTO query, QueryType getType,
            List<IngredientModel> ingredients, bool canLoadMore)?
        success,
    TResult Function(PaginationQueryDTO query, QueryType getType,
            List<IngredientModel>? ingredients, QueryErrorType errorType)?
        failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(query, getType, ingredients);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(SearchIngredientSuccess value) success,
    required TResult Function(SearchIngredientFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(SearchIngredientSuccess value)? success,
    TResult? Function(SearchIngredientFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(SearchIngredientSuccess value)? success,
    TResult Function(SearchIngredientFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SearchIngredientState {
  const factory _Loading(
      {required final PaginationQueryDTO query,
      final QueryType getType,
      final List<IngredientModel>? ingredients}) = _$_Loading;

  @override
  PaginationQueryDTO get query;
  @override
  QueryType get getType;
  @override
  List<IngredientModel>? get ingredients;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchIngredientSuccessCopyWith<$Res>
    implements $SearchIngredientStateCopyWith<$Res> {
  factory _$$SearchIngredientSuccessCopyWith(_$SearchIngredientSuccess value,
          $Res Function(_$SearchIngredientSuccess) then) =
      __$$SearchIngredientSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PaginationQueryDTO query,
      QueryType getType,
      List<IngredientModel> ingredients,
      bool canLoadMore});

  @override
  $PaginationQueryDTOCopyWith<$Res> get query;
}

/// @nodoc
class __$$SearchIngredientSuccessCopyWithImpl<$Res>
    extends _$SearchIngredientStateCopyWithImpl<$Res, _$SearchIngredientSuccess>
    implements _$$SearchIngredientSuccessCopyWith<$Res> {
  __$$SearchIngredientSuccessCopyWithImpl(_$SearchIngredientSuccess _value,
      $Res Function(_$SearchIngredientSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? getType = null,
    Object? ingredients = null,
    Object? canLoadMore = null,
  }) {
    return _then(_$SearchIngredientSuccess(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as PaginationQueryDTO,
      getType: null == getType
          ? _value.getType
          : getType // ignore: cast_nullable_to_non_nullable
              as QueryType,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<IngredientModel>,
      canLoadMore: null == canLoadMore
          ? _value.canLoadMore
          : canLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SearchIngredientSuccess implements SearchIngredientSuccess {
  const _$SearchIngredientSuccess(
      {required this.query,
      this.getType = QueryType.initial,
      required final List<IngredientModel> ingredients,
      required this.canLoadMore})
      : _ingredients = ingredients;

  @override
  final PaginationQueryDTO query;
  @override
  @JsonKey()
  final QueryType getType;
  final List<IngredientModel> _ingredients;
  @override
  List<IngredientModel> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  final bool canLoadMore;

  @override
  String toString() {
    return 'SearchIngredientState.success(query: $query, getType: $getType, ingredients: $ingredients, canLoadMore: $canLoadMore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchIngredientSuccess &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.getType, getType) || other.getType == getType) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            (identical(other.canLoadMore, canLoadMore) ||
                other.canLoadMore == canLoadMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, getType,
      const DeepCollectionEquality().hash(_ingredients), canLoadMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchIngredientSuccessCopyWith<_$SearchIngredientSuccess> get copyWith =>
      __$$SearchIngredientSuccessCopyWithImpl<_$SearchIngredientSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaginationQueryDTO query, QueryType getType,
            List<IngredientModel>? ingredients)
        loading,
    required TResult Function(PaginationQueryDTO query, QueryType getType,
            List<IngredientModel> ingredients, bool canLoadMore)
        success,
    required TResult Function(PaginationQueryDTO query, QueryType getType,
            List<IngredientModel>? ingredients, QueryErrorType errorType)
        failure,
  }) {
    return success(query, getType, ingredients, canLoadMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaginationQueryDTO query, QueryType getType,
            List<IngredientModel>? ingredients)?
        loading,
    TResult? Function(PaginationQueryDTO query, QueryType getType,
            List<IngredientModel> ingredients, bool canLoadMore)?
        success,
    TResult? Function(PaginationQueryDTO query, QueryType getType,
            List<IngredientModel>? ingredients, QueryErrorType errorType)?
        failure,
  }) {
    return success?.call(query, getType, ingredients, canLoadMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaginationQueryDTO query, QueryType getType,
            List<IngredientModel>? ingredients)?
        loading,
    TResult Function(PaginationQueryDTO query, QueryType getType,
            List<IngredientModel> ingredients, bool canLoadMore)?
        success,
    TResult Function(PaginationQueryDTO query, QueryType getType,
            List<IngredientModel>? ingredients, QueryErrorType errorType)?
        failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(query, getType, ingredients, canLoadMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(SearchIngredientSuccess value) success,
    required TResult Function(SearchIngredientFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(SearchIngredientSuccess value)? success,
    TResult? Function(SearchIngredientFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(SearchIngredientSuccess value)? success,
    TResult Function(SearchIngredientFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SearchIngredientSuccess implements SearchIngredientState {
  const factory SearchIngredientSuccess(
      {required final PaginationQueryDTO query,
      final QueryType getType,
      required final List<IngredientModel> ingredients,
      required final bool canLoadMore}) = _$SearchIngredientSuccess;

  @override
  PaginationQueryDTO get query;
  @override
  QueryType get getType;
  @override
  List<IngredientModel> get ingredients;
  bool get canLoadMore;
  @override
  @JsonKey(ignore: true)
  _$$SearchIngredientSuccessCopyWith<_$SearchIngredientSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchIngredientFailureCopyWith<$Res>
    implements $SearchIngredientStateCopyWith<$Res> {
  factory _$$SearchIngredientFailureCopyWith(_$SearchIngredientFailure value,
          $Res Function(_$SearchIngredientFailure) then) =
      __$$SearchIngredientFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PaginationQueryDTO query,
      QueryType getType,
      List<IngredientModel>? ingredients,
      QueryErrorType errorType});

  @override
  $PaginationQueryDTOCopyWith<$Res> get query;
}

/// @nodoc
class __$$SearchIngredientFailureCopyWithImpl<$Res>
    extends _$SearchIngredientStateCopyWithImpl<$Res, _$SearchIngredientFailure>
    implements _$$SearchIngredientFailureCopyWith<$Res> {
  __$$SearchIngredientFailureCopyWithImpl(_$SearchIngredientFailure _value,
      $Res Function(_$SearchIngredientFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? getType = null,
    Object? ingredients = freezed,
    Object? errorType = null,
  }) {
    return _then(_$SearchIngredientFailure(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as PaginationQueryDTO,
      getType: null == getType
          ? _value.getType
          : getType // ignore: cast_nullable_to_non_nullable
              as QueryType,
      ingredients: freezed == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<IngredientModel>?,
      errorType: null == errorType
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as QueryErrorType,
    ));
  }
}

/// @nodoc

class _$SearchIngredientFailure implements SearchIngredientFailure {
  const _$SearchIngredientFailure(
      {required this.query,
      this.getType = QueryType.initial,
      final List<IngredientModel>? ingredients,
      this.errorType = QueryErrorType.initial})
      : _ingredients = ingredients;

  @override
  final PaginationQueryDTO query;
  @override
  @JsonKey()
  final QueryType getType;
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
  @JsonKey()
  final QueryErrorType errorType;

  @override
  String toString() {
    return 'SearchIngredientState.failure(query: $query, getType: $getType, ingredients: $ingredients, errorType: $errorType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchIngredientFailure &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.getType, getType) || other.getType == getType) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            (identical(other.errorType, errorType) ||
                other.errorType == errorType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, getType,
      const DeepCollectionEquality().hash(_ingredients), errorType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchIngredientFailureCopyWith<_$SearchIngredientFailure> get copyWith =>
      __$$SearchIngredientFailureCopyWithImpl<_$SearchIngredientFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaginationQueryDTO query, QueryType getType,
            List<IngredientModel>? ingredients)
        loading,
    required TResult Function(PaginationQueryDTO query, QueryType getType,
            List<IngredientModel> ingredients, bool canLoadMore)
        success,
    required TResult Function(PaginationQueryDTO query, QueryType getType,
            List<IngredientModel>? ingredients, QueryErrorType errorType)
        failure,
  }) {
    return failure(query, getType, ingredients, errorType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaginationQueryDTO query, QueryType getType,
            List<IngredientModel>? ingredients)?
        loading,
    TResult? Function(PaginationQueryDTO query, QueryType getType,
            List<IngredientModel> ingredients, bool canLoadMore)?
        success,
    TResult? Function(PaginationQueryDTO query, QueryType getType,
            List<IngredientModel>? ingredients, QueryErrorType errorType)?
        failure,
  }) {
    return failure?.call(query, getType, ingredients, errorType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaginationQueryDTO query, QueryType getType,
            List<IngredientModel>? ingredients)?
        loading,
    TResult Function(PaginationQueryDTO query, QueryType getType,
            List<IngredientModel> ingredients, bool canLoadMore)?
        success,
    TResult Function(PaginationQueryDTO query, QueryType getType,
            List<IngredientModel>? ingredients, QueryErrorType errorType)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(query, getType, ingredients, errorType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(SearchIngredientSuccess value) success,
    required TResult Function(SearchIngredientFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(SearchIngredientSuccess value)? success,
    TResult? Function(SearchIngredientFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(SearchIngredientSuccess value)? success,
    TResult Function(SearchIngredientFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class SearchIngredientFailure implements SearchIngredientState {
  const factory SearchIngredientFailure(
      {required final PaginationQueryDTO query,
      final QueryType getType,
      final List<IngredientModel>? ingredients,
      final QueryErrorType errorType}) = _$SearchIngredientFailure;

  @override
  PaginationQueryDTO get query;
  @override
  QueryType get getType;
  @override
  List<IngredientModel>? get ingredients;
  QueryErrorType get errorType;
  @override
  @JsonKey(ignore: true)
  _$$SearchIngredientFailureCopyWith<_$SearchIngredientFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
