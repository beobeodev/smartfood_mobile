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
  bool get isLoadMore => throw _privateConstructorUsedError;
  PaginationQueryDTO get query => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoadMore, PaginationQueryDTO query) get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoadMore, PaginationQueryDTO query)? get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoadMore, PaginationQueryDTO query)? get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Get value) get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Get value)? get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Get value)? get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchIngredientEventCopyWith<SearchIngredientEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchIngredientEventCopyWith<$Res> {
  factory $SearchIngredientEventCopyWith(SearchIngredientEvent value,
          $Res Function(SearchIngredientEvent) then) =
      _$SearchIngredientEventCopyWithImpl<$Res, SearchIngredientEvent>;
  @useResult
  $Res call({bool isLoadMore, PaginationQueryDTO query});

  $PaginationQueryDTOCopyWith<$Res> get query;
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoadMore = null,
    Object? query = null,
  }) {
    return _then(_value.copyWith(
      isLoadMore: null == isLoadMore
          ? _value.isLoadMore
          : isLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as PaginationQueryDTO,
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
abstract class _$$_GetCopyWith<$Res>
    implements $SearchIngredientEventCopyWith<$Res> {
  factory _$$_GetCopyWith(_$_Get value, $Res Function(_$_Get) then) =
      __$$_GetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoadMore, PaginationQueryDTO query});

  @override
  $PaginationQueryDTOCopyWith<$Res> get query;
}

/// @nodoc
class __$$_GetCopyWithImpl<$Res>
    extends _$SearchIngredientEventCopyWithImpl<$Res, _$_Get>
    implements _$$_GetCopyWith<$Res> {
  __$$_GetCopyWithImpl(_$_Get _value, $Res Function(_$_Get) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoadMore = null,
    Object? query = null,
  }) {
    return _then(_$_Get(
      isLoadMore: null == isLoadMore
          ? _value.isLoadMore
          : isLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as PaginationQueryDTO,
    ));
  }
}

/// @nodoc

class _$_Get implements _Get {
  const _$_Get({this.isLoadMore = false, required this.query});

  @override
  @JsonKey()
  final bool isLoadMore;
  @override
  final PaginationQueryDTO query;

  @override
  String toString() {
    return 'SearchIngredientEvent.get(isLoadMore: $isLoadMore, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Get &&
            (identical(other.isLoadMore, isLoadMore) ||
                other.isLoadMore == isLoadMore) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoadMore, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCopyWith<_$_Get> get copyWith =>
      __$$_GetCopyWithImpl<_$_Get>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoadMore, PaginationQueryDTO query) get,
  }) {
    return get(isLoadMore, query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoadMore, PaginationQueryDTO query)? get,
  }) {
    return get?.call(isLoadMore, query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoadMore, PaginationQueryDTO query)? get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(isLoadMore, query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Get value) get,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Get value)? get,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Get value)? get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class _Get implements SearchIngredientEvent {
  const factory _Get(
      {final bool isLoadMore,
      required final PaginationQueryDTO query}) = _$_Get;

  @override
  bool get isLoadMore;
  @override
  PaginationQueryDTO get query;
  @override
  @JsonKey(ignore: true)
  _$$_GetCopyWith<_$_Get> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchIngredientState {
  bool get isLoadMore => throw _privateConstructorUsedError;
  PaginationQueryDTO get query => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoadMore, PaginationQueryDTO query)
        loading,
    required TResult Function(bool isLoadMore, PaginationQueryDTO query,
            List<IngredientModel> ingredients, bool canLoadMore)
        success,
    required TResult Function(bool isLoadMore, PaginationQueryDTO query)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoadMore, PaginationQueryDTO query)? loading,
    TResult? Function(bool isLoadMore, PaginationQueryDTO query,
            List<IngredientModel> ingredients, bool canLoadMore)?
        success,
    TResult? Function(bool isLoadMore, PaginationQueryDTO query)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoadMore, PaginationQueryDTO query)? loading,
    TResult Function(bool isLoadMore, PaginationQueryDTO query,
            List<IngredientModel> ingredients, bool canLoadMore)?
        success,
    TResult Function(bool isLoadMore, PaginationQueryDTO query)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
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
  $Res call({bool isLoadMore, PaginationQueryDTO query});

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
    Object? isLoadMore = null,
    Object? query = null,
  }) {
    return _then(_value.copyWith(
      isLoadMore: null == isLoadMore
          ? _value.isLoadMore
          : isLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as PaginationQueryDTO,
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
  $Res call({bool isLoadMore, PaginationQueryDTO query});

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
    Object? isLoadMore = null,
    Object? query = null,
  }) {
    return _then(_$_Loading(
      isLoadMore: null == isLoadMore
          ? _value.isLoadMore
          : isLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as PaginationQueryDTO,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading({this.isLoadMore = false, required this.query});

  @override
  @JsonKey()
  final bool isLoadMore;
  @override
  final PaginationQueryDTO query;

  @override
  String toString() {
    return 'SearchIngredientState.loading(isLoadMore: $isLoadMore, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            (identical(other.isLoadMore, isLoadMore) ||
                other.isLoadMore == isLoadMore) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoadMore, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoadMore, PaginationQueryDTO query)
        loading,
    required TResult Function(bool isLoadMore, PaginationQueryDTO query,
            List<IngredientModel> ingredients, bool canLoadMore)
        success,
    required TResult Function(bool isLoadMore, PaginationQueryDTO query)
        failure,
  }) {
    return loading(isLoadMore, query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoadMore, PaginationQueryDTO query)? loading,
    TResult? Function(bool isLoadMore, PaginationQueryDTO query,
            List<IngredientModel> ingredients, bool canLoadMore)?
        success,
    TResult? Function(bool isLoadMore, PaginationQueryDTO query)? failure,
  }) {
    return loading?.call(isLoadMore, query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoadMore, PaginationQueryDTO query)? loading,
    TResult Function(bool isLoadMore, PaginationQueryDTO query,
            List<IngredientModel> ingredients, bool canLoadMore)?
        success,
    TResult Function(bool isLoadMore, PaginationQueryDTO query)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(isLoadMore, query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
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
      {final bool isLoadMore,
      required final PaginationQueryDTO query}) = _$_Loading;

  @override
  bool get isLoadMore;
  @override
  PaginationQueryDTO get query;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res>
    implements $SearchIngredientStateCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoadMore,
      PaginationQueryDTO query,
      List<IngredientModel> ingredients,
      bool canLoadMore});

  @override
  $PaginationQueryDTOCopyWith<$Res> get query;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$SearchIngredientStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoadMore = null,
    Object? query = null,
    Object? ingredients = null,
    Object? canLoadMore = null,
  }) {
    return _then(_$_Success(
      isLoadMore: null == isLoadMore
          ? _value.isLoadMore
          : isLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as PaginationQueryDTO,
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

class _$_Success implements _Success {
  const _$_Success(
      {this.isLoadMore = false,
      required this.query,
      required final List<IngredientModel> ingredients,
      required this.canLoadMore})
      : _ingredients = ingredients;

  @override
  @JsonKey()
  final bool isLoadMore;
  @override
  final PaginationQueryDTO query;
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
    return 'SearchIngredientState.success(isLoadMore: $isLoadMore, query: $query, ingredients: $ingredients, canLoadMore: $canLoadMore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            (identical(other.isLoadMore, isLoadMore) ||
                other.isLoadMore == isLoadMore) &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            (identical(other.canLoadMore, canLoadMore) ||
                other.canLoadMore == canLoadMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoadMore, query,
      const DeepCollectionEquality().hash(_ingredients), canLoadMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoadMore, PaginationQueryDTO query)
        loading,
    required TResult Function(bool isLoadMore, PaginationQueryDTO query,
            List<IngredientModel> ingredients, bool canLoadMore)
        success,
    required TResult Function(bool isLoadMore, PaginationQueryDTO query)
        failure,
  }) {
    return success(isLoadMore, query, ingredients, canLoadMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoadMore, PaginationQueryDTO query)? loading,
    TResult? Function(bool isLoadMore, PaginationQueryDTO query,
            List<IngredientModel> ingredients, bool canLoadMore)?
        success,
    TResult? Function(bool isLoadMore, PaginationQueryDTO query)? failure,
  }) {
    return success?.call(isLoadMore, query, ingredients, canLoadMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoadMore, PaginationQueryDTO query)? loading,
    TResult Function(bool isLoadMore, PaginationQueryDTO query,
            List<IngredientModel> ingredients, bool canLoadMore)?
        success,
    TResult Function(bool isLoadMore, PaginationQueryDTO query)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(isLoadMore, query, ingredients, canLoadMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements SearchIngredientState {
  const factory _Success(
      {final bool isLoadMore,
      required final PaginationQueryDTO query,
      required final List<IngredientModel> ingredients,
      required final bool canLoadMore}) = _$_Success;

  @override
  bool get isLoadMore;
  @override
  PaginationQueryDTO get query;
  List<IngredientModel> get ingredients;
  bool get canLoadMore;
  @override
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res>
    implements $SearchIngredientStateCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoadMore, PaginationQueryDTO query});

  @override
  $PaginationQueryDTOCopyWith<$Res> get query;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$SearchIngredientStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoadMore = null,
    Object? query = null,
  }) {
    return _then(_$_Failure(
      isLoadMore: null == isLoadMore
          ? _value.isLoadMore
          : isLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as PaginationQueryDTO,
    ));
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure({this.isLoadMore = false, required this.query});

  @override
  @JsonKey()
  final bool isLoadMore;
  @override
  final PaginationQueryDTO query;

  @override
  String toString() {
    return 'SearchIngredientState.failure(isLoadMore: $isLoadMore, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            (identical(other.isLoadMore, isLoadMore) ||
                other.isLoadMore == isLoadMore) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoadMore, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoadMore, PaginationQueryDTO query)
        loading,
    required TResult Function(bool isLoadMore, PaginationQueryDTO query,
            List<IngredientModel> ingredients, bool canLoadMore)
        success,
    required TResult Function(bool isLoadMore, PaginationQueryDTO query)
        failure,
  }) {
    return failure(isLoadMore, query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoadMore, PaginationQueryDTO query)? loading,
    TResult? Function(bool isLoadMore, PaginationQueryDTO query,
            List<IngredientModel> ingredients, bool canLoadMore)?
        success,
    TResult? Function(bool isLoadMore, PaginationQueryDTO query)? failure,
  }) {
    return failure?.call(isLoadMore, query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoadMore, PaginationQueryDTO query)? loading,
    TResult Function(bool isLoadMore, PaginationQueryDTO query,
            List<IngredientModel> ingredients, bool canLoadMore)?
        success,
    TResult Function(bool isLoadMore, PaginationQueryDTO query)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(isLoadMore, query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements SearchIngredientState {
  const factory _Failure(
      {final bool isLoadMore,
      required final PaginationQueryDTO query}) = _$_Failure;

  @override
  bool get isLoadMore;
  @override
  PaginationQueryDTO get query;
  @override
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
