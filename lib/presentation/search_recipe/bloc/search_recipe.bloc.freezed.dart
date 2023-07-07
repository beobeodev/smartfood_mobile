// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_recipe.bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchRecipeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<IngredientModel> ingredients)
        getByIngredients,
    required TResult Function(String? searchKey) getAll,
    required TResult Function() refresh,
    required TResult Function() loadMore,
    required TResult Function(IngredientModel ingredient) addIngredient,
    required TResult Function(IngredientModel ingredient) removeIngredient,
    required TResult Function(List<RecipeFilterDTO> filters) applyFilters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<IngredientModel> ingredients)? getByIngredients,
    TResult? Function(String? searchKey)? getAll,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
    TResult? Function(IngredientModel ingredient)? addIngredient,
    TResult? Function(IngredientModel ingredient)? removeIngredient,
    TResult? Function(List<RecipeFilterDTO> filters)? applyFilters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<IngredientModel> ingredients)? getByIngredients,
    TResult Function(String? searchKey)? getAll,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function(IngredientModel ingredient)? addIngredient,
    TResult Function(IngredientModel ingredient)? removeIngredient,
    TResult Function(List<RecipeFilterDTO> filters)? applyFilters,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetByIngredients value) getByIngredients,
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_AddIngredient value) addIngredient,
    required TResult Function(_RemoveIngredient value) removeIngredient,
    required TResult Function(_ApplyFilters value) applyFilters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetByIngredients value)? getByIngredients,
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_RemoveIngredient value)? removeIngredient,
    TResult? Function(_ApplyFilters value)? applyFilters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetByIngredients value)? getByIngredients,
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_RemoveIngredient value)? removeIngredient,
    TResult Function(_ApplyFilters value)? applyFilters,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchRecipeEventCopyWith<$Res> {
  factory $SearchRecipeEventCopyWith(
          SearchRecipeEvent value, $Res Function(SearchRecipeEvent) then) =
      _$SearchRecipeEventCopyWithImpl<$Res, SearchRecipeEvent>;
}

/// @nodoc
class _$SearchRecipeEventCopyWithImpl<$Res, $Val extends SearchRecipeEvent>
    implements $SearchRecipeEventCopyWith<$Res> {
  _$SearchRecipeEventCopyWithImpl(this._value, this._then);

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
  $Res call({List<IngredientModel> ingredients});
}

/// @nodoc
class __$$_GetByIngredientsCopyWithImpl<$Res>
    extends _$SearchRecipeEventCopyWithImpl<$Res, _$_GetByIngredients>
    implements _$$_GetByIngredientsCopyWith<$Res> {
  __$$_GetByIngredientsCopyWithImpl(
      _$_GetByIngredients _value, $Res Function(_$_GetByIngredients) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredients = null,
  }) {
    return _then(_$_GetByIngredients(
      null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<IngredientModel>,
    ));
  }
}

/// @nodoc

class _$_GetByIngredients implements _GetByIngredients {
  const _$_GetByIngredients(final List<IngredientModel> ingredients)
      : _ingredients = ingredients;

  final List<IngredientModel> _ingredients;
  @override
  List<IngredientModel> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  String toString() {
    return 'SearchRecipeEvent.getByIngredients(ingredients: $ingredients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetByIngredients &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_ingredients));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetByIngredientsCopyWith<_$_GetByIngredients> get copyWith =>
      __$$_GetByIngredientsCopyWithImpl<_$_GetByIngredients>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<IngredientModel> ingredients)
        getByIngredients,
    required TResult Function(String? searchKey) getAll,
    required TResult Function() refresh,
    required TResult Function() loadMore,
    required TResult Function(IngredientModel ingredient) addIngredient,
    required TResult Function(IngredientModel ingredient) removeIngredient,
    required TResult Function(List<RecipeFilterDTO> filters) applyFilters,
  }) {
    return getByIngredients(ingredients);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<IngredientModel> ingredients)? getByIngredients,
    TResult? Function(String? searchKey)? getAll,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
    TResult? Function(IngredientModel ingredient)? addIngredient,
    TResult? Function(IngredientModel ingredient)? removeIngredient,
    TResult? Function(List<RecipeFilterDTO> filters)? applyFilters,
  }) {
    return getByIngredients?.call(ingredients);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<IngredientModel> ingredients)? getByIngredients,
    TResult Function(String? searchKey)? getAll,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function(IngredientModel ingredient)? addIngredient,
    TResult Function(IngredientModel ingredient)? removeIngredient,
    TResult Function(List<RecipeFilterDTO> filters)? applyFilters,
    required TResult orElse(),
  }) {
    if (getByIngredients != null) {
      return getByIngredients(ingredients);
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
    required TResult Function(_AddIngredient value) addIngredient,
    required TResult Function(_RemoveIngredient value) removeIngredient,
    required TResult Function(_ApplyFilters value) applyFilters,
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
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_RemoveIngredient value)? removeIngredient,
    TResult? Function(_ApplyFilters value)? applyFilters,
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
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_RemoveIngredient value)? removeIngredient,
    TResult Function(_ApplyFilters value)? applyFilters,
    required TResult orElse(),
  }) {
    if (getByIngredients != null) {
      return getByIngredients(this);
    }
    return orElse();
  }
}

abstract class _GetByIngredients implements SearchRecipeEvent {
  const factory _GetByIngredients(final List<IngredientModel> ingredients) =
      _$_GetByIngredients;

  List<IngredientModel> get ingredients;
  @JsonKey(ignore: true)
  _$$_GetByIngredientsCopyWith<_$_GetByIngredients> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$SearchRecipeEventCopyWithImpl<$Res, _$_GetAll>
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
    return 'SearchRecipeEvent.getAll(searchKey: $searchKey)';
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
    required TResult Function(List<IngredientModel> ingredients)
        getByIngredients,
    required TResult Function(String? searchKey) getAll,
    required TResult Function() refresh,
    required TResult Function() loadMore,
    required TResult Function(IngredientModel ingredient) addIngredient,
    required TResult Function(IngredientModel ingredient) removeIngredient,
    required TResult Function(List<RecipeFilterDTO> filters) applyFilters,
  }) {
    return getAll(searchKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<IngredientModel> ingredients)? getByIngredients,
    TResult? Function(String? searchKey)? getAll,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
    TResult? Function(IngredientModel ingredient)? addIngredient,
    TResult? Function(IngredientModel ingredient)? removeIngredient,
    TResult? Function(List<RecipeFilterDTO> filters)? applyFilters,
  }) {
    return getAll?.call(searchKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<IngredientModel> ingredients)? getByIngredients,
    TResult Function(String? searchKey)? getAll,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function(IngredientModel ingredient)? addIngredient,
    TResult Function(IngredientModel ingredient)? removeIngredient,
    TResult Function(List<RecipeFilterDTO> filters)? applyFilters,
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
    required TResult Function(_GetByIngredients value) getByIngredients,
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_AddIngredient value) addIngredient,
    required TResult Function(_RemoveIngredient value) removeIngredient,
    required TResult Function(_ApplyFilters value) applyFilters,
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
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_RemoveIngredient value)? removeIngredient,
    TResult? Function(_ApplyFilters value)? applyFilters,
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
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_RemoveIngredient value)? removeIngredient,
    TResult Function(_ApplyFilters value)? applyFilters,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll(this);
    }
    return orElse();
  }
}

abstract class _GetAll implements SearchRecipeEvent {
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
    extends _$SearchRecipeEventCopyWithImpl<$Res, _$_Refresh>
    implements _$$_RefreshCopyWith<$Res> {
  __$$_RefreshCopyWithImpl(_$_Refresh _value, $Res Function(_$_Refresh) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Refresh implements _Refresh {
  const _$_Refresh();

  @override
  String toString() {
    return 'SearchRecipeEvent.refresh()';
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
    required TResult Function(List<IngredientModel> ingredients)
        getByIngredients,
    required TResult Function(String? searchKey) getAll,
    required TResult Function() refresh,
    required TResult Function() loadMore,
    required TResult Function(IngredientModel ingredient) addIngredient,
    required TResult Function(IngredientModel ingredient) removeIngredient,
    required TResult Function(List<RecipeFilterDTO> filters) applyFilters,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<IngredientModel> ingredients)? getByIngredients,
    TResult? Function(String? searchKey)? getAll,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
    TResult? Function(IngredientModel ingredient)? addIngredient,
    TResult? Function(IngredientModel ingredient)? removeIngredient,
    TResult? Function(List<RecipeFilterDTO> filters)? applyFilters,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<IngredientModel> ingredients)? getByIngredients,
    TResult Function(String? searchKey)? getAll,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function(IngredientModel ingredient)? addIngredient,
    TResult Function(IngredientModel ingredient)? removeIngredient,
    TResult Function(List<RecipeFilterDTO> filters)? applyFilters,
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
    required TResult Function(_AddIngredient value) addIngredient,
    required TResult Function(_RemoveIngredient value) removeIngredient,
    required TResult Function(_ApplyFilters value) applyFilters,
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
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_RemoveIngredient value)? removeIngredient,
    TResult? Function(_ApplyFilters value)? applyFilters,
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
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_RemoveIngredient value)? removeIngredient,
    TResult Function(_ApplyFilters value)? applyFilters,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements SearchRecipeEvent {
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
    extends _$SearchRecipeEventCopyWithImpl<$Res, _$_LoadMore>
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
    return 'SearchRecipeEvent.loadMore()';
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
    required TResult Function(List<IngredientModel> ingredients)
        getByIngredients,
    required TResult Function(String? searchKey) getAll,
    required TResult Function() refresh,
    required TResult Function() loadMore,
    required TResult Function(IngredientModel ingredient) addIngredient,
    required TResult Function(IngredientModel ingredient) removeIngredient,
    required TResult Function(List<RecipeFilterDTO> filters) applyFilters,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<IngredientModel> ingredients)? getByIngredients,
    TResult? Function(String? searchKey)? getAll,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
    TResult? Function(IngredientModel ingredient)? addIngredient,
    TResult? Function(IngredientModel ingredient)? removeIngredient,
    TResult? Function(List<RecipeFilterDTO> filters)? applyFilters,
  }) {
    return loadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<IngredientModel> ingredients)? getByIngredients,
    TResult Function(String? searchKey)? getAll,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function(IngredientModel ingredient)? addIngredient,
    TResult Function(IngredientModel ingredient)? removeIngredient,
    TResult Function(List<RecipeFilterDTO> filters)? applyFilters,
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
    required TResult Function(_AddIngredient value) addIngredient,
    required TResult Function(_RemoveIngredient value) removeIngredient,
    required TResult Function(_ApplyFilters value) applyFilters,
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
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_RemoveIngredient value)? removeIngredient,
    TResult? Function(_ApplyFilters value)? applyFilters,
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
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_RemoveIngredient value)? removeIngredient,
    TResult Function(_ApplyFilters value)? applyFilters,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class _LoadMore implements SearchRecipeEvent {
  const factory _LoadMore() = _$_LoadMore;
}

/// @nodoc
abstract class _$$_AddIngredientCopyWith<$Res> {
  factory _$$_AddIngredientCopyWith(
          _$_AddIngredient value, $Res Function(_$_AddIngredient) then) =
      __$$_AddIngredientCopyWithImpl<$Res>;
  @useResult
  $Res call({IngredientModel ingredient});

  $IngredientModelCopyWith<$Res> get ingredient;
}

/// @nodoc
class __$$_AddIngredientCopyWithImpl<$Res>
    extends _$SearchRecipeEventCopyWithImpl<$Res, _$_AddIngredient>
    implements _$$_AddIngredientCopyWith<$Res> {
  __$$_AddIngredientCopyWithImpl(
      _$_AddIngredient _value, $Res Function(_$_AddIngredient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredient = null,
  }) {
    return _then(_$_AddIngredient(
      null == ingredient
          ? _value.ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as IngredientModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $IngredientModelCopyWith<$Res> get ingredient {
    return $IngredientModelCopyWith<$Res>(_value.ingredient, (value) {
      return _then(_value.copyWith(ingredient: value));
    });
  }
}

/// @nodoc

class _$_AddIngredient implements _AddIngredient {
  const _$_AddIngredient(this.ingredient);

  @override
  final IngredientModel ingredient;

  @override
  String toString() {
    return 'SearchRecipeEvent.addIngredient(ingredient: $ingredient)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddIngredient &&
            (identical(other.ingredient, ingredient) ||
                other.ingredient == ingredient));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ingredient);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddIngredientCopyWith<_$_AddIngredient> get copyWith =>
      __$$_AddIngredientCopyWithImpl<_$_AddIngredient>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<IngredientModel> ingredients)
        getByIngredients,
    required TResult Function(String? searchKey) getAll,
    required TResult Function() refresh,
    required TResult Function() loadMore,
    required TResult Function(IngredientModel ingredient) addIngredient,
    required TResult Function(IngredientModel ingredient) removeIngredient,
    required TResult Function(List<RecipeFilterDTO> filters) applyFilters,
  }) {
    return addIngredient(ingredient);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<IngredientModel> ingredients)? getByIngredients,
    TResult? Function(String? searchKey)? getAll,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
    TResult? Function(IngredientModel ingredient)? addIngredient,
    TResult? Function(IngredientModel ingredient)? removeIngredient,
    TResult? Function(List<RecipeFilterDTO> filters)? applyFilters,
  }) {
    return addIngredient?.call(ingredient);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<IngredientModel> ingredients)? getByIngredients,
    TResult Function(String? searchKey)? getAll,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function(IngredientModel ingredient)? addIngredient,
    TResult Function(IngredientModel ingredient)? removeIngredient,
    TResult Function(List<RecipeFilterDTO> filters)? applyFilters,
    required TResult orElse(),
  }) {
    if (addIngredient != null) {
      return addIngredient(ingredient);
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
    required TResult Function(_AddIngredient value) addIngredient,
    required TResult Function(_RemoveIngredient value) removeIngredient,
    required TResult Function(_ApplyFilters value) applyFilters,
  }) {
    return addIngredient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetByIngredients value)? getByIngredients,
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_RemoveIngredient value)? removeIngredient,
    TResult? Function(_ApplyFilters value)? applyFilters,
  }) {
    return addIngredient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetByIngredients value)? getByIngredients,
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_RemoveIngredient value)? removeIngredient,
    TResult Function(_ApplyFilters value)? applyFilters,
    required TResult orElse(),
  }) {
    if (addIngredient != null) {
      return addIngredient(this);
    }
    return orElse();
  }
}

abstract class _AddIngredient implements SearchRecipeEvent {
  const factory _AddIngredient(final IngredientModel ingredient) =
      _$_AddIngredient;

  IngredientModel get ingredient;
  @JsonKey(ignore: true)
  _$$_AddIngredientCopyWith<_$_AddIngredient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveIngredientCopyWith<$Res> {
  factory _$$_RemoveIngredientCopyWith(
          _$_RemoveIngredient value, $Res Function(_$_RemoveIngredient) then) =
      __$$_RemoveIngredientCopyWithImpl<$Res>;
  @useResult
  $Res call({IngredientModel ingredient});

  $IngredientModelCopyWith<$Res> get ingredient;
}

/// @nodoc
class __$$_RemoveIngredientCopyWithImpl<$Res>
    extends _$SearchRecipeEventCopyWithImpl<$Res, _$_RemoveIngredient>
    implements _$$_RemoveIngredientCopyWith<$Res> {
  __$$_RemoveIngredientCopyWithImpl(
      _$_RemoveIngredient _value, $Res Function(_$_RemoveIngredient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredient = null,
  }) {
    return _then(_$_RemoveIngredient(
      null == ingredient
          ? _value.ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as IngredientModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $IngredientModelCopyWith<$Res> get ingredient {
    return $IngredientModelCopyWith<$Res>(_value.ingredient, (value) {
      return _then(_value.copyWith(ingredient: value));
    });
  }
}

/// @nodoc

class _$_RemoveIngredient implements _RemoveIngredient {
  const _$_RemoveIngredient(this.ingredient);

  @override
  final IngredientModel ingredient;

  @override
  String toString() {
    return 'SearchRecipeEvent.removeIngredient(ingredient: $ingredient)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveIngredient &&
            (identical(other.ingredient, ingredient) ||
                other.ingredient == ingredient));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ingredient);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveIngredientCopyWith<_$_RemoveIngredient> get copyWith =>
      __$$_RemoveIngredientCopyWithImpl<_$_RemoveIngredient>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<IngredientModel> ingredients)
        getByIngredients,
    required TResult Function(String? searchKey) getAll,
    required TResult Function() refresh,
    required TResult Function() loadMore,
    required TResult Function(IngredientModel ingredient) addIngredient,
    required TResult Function(IngredientModel ingredient) removeIngredient,
    required TResult Function(List<RecipeFilterDTO> filters) applyFilters,
  }) {
    return removeIngredient(ingredient);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<IngredientModel> ingredients)? getByIngredients,
    TResult? Function(String? searchKey)? getAll,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
    TResult? Function(IngredientModel ingredient)? addIngredient,
    TResult? Function(IngredientModel ingredient)? removeIngredient,
    TResult? Function(List<RecipeFilterDTO> filters)? applyFilters,
  }) {
    return removeIngredient?.call(ingredient);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<IngredientModel> ingredients)? getByIngredients,
    TResult Function(String? searchKey)? getAll,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function(IngredientModel ingredient)? addIngredient,
    TResult Function(IngredientModel ingredient)? removeIngredient,
    TResult Function(List<RecipeFilterDTO> filters)? applyFilters,
    required TResult orElse(),
  }) {
    if (removeIngredient != null) {
      return removeIngredient(ingredient);
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
    required TResult Function(_AddIngredient value) addIngredient,
    required TResult Function(_RemoveIngredient value) removeIngredient,
    required TResult Function(_ApplyFilters value) applyFilters,
  }) {
    return removeIngredient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetByIngredients value)? getByIngredients,
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_RemoveIngredient value)? removeIngredient,
    TResult? Function(_ApplyFilters value)? applyFilters,
  }) {
    return removeIngredient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetByIngredients value)? getByIngredients,
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_RemoveIngredient value)? removeIngredient,
    TResult Function(_ApplyFilters value)? applyFilters,
    required TResult orElse(),
  }) {
    if (removeIngredient != null) {
      return removeIngredient(this);
    }
    return orElse();
  }
}

abstract class _RemoveIngredient implements SearchRecipeEvent {
  const factory _RemoveIngredient(final IngredientModel ingredient) =
      _$_RemoveIngredient;

  IngredientModel get ingredient;
  @JsonKey(ignore: true)
  _$$_RemoveIngredientCopyWith<_$_RemoveIngredient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ApplyFiltersCopyWith<$Res> {
  factory _$$_ApplyFiltersCopyWith(
          _$_ApplyFilters value, $Res Function(_$_ApplyFilters) then) =
      __$$_ApplyFiltersCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RecipeFilterDTO> filters});
}

/// @nodoc
class __$$_ApplyFiltersCopyWithImpl<$Res>
    extends _$SearchRecipeEventCopyWithImpl<$Res, _$_ApplyFilters>
    implements _$$_ApplyFiltersCopyWith<$Res> {
  __$$_ApplyFiltersCopyWithImpl(
      _$_ApplyFilters _value, $Res Function(_$_ApplyFilters) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
  }) {
    return _then(_$_ApplyFilters(
      null == filters
          ? _value._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<RecipeFilterDTO>,
    ));
  }
}

/// @nodoc

class _$_ApplyFilters implements _ApplyFilters {
  const _$_ApplyFilters(final List<RecipeFilterDTO> filters)
      : _filters = filters;

  final List<RecipeFilterDTO> _filters;
  @override
  List<RecipeFilterDTO> get filters {
    if (_filters is EqualUnmodifiableListView) return _filters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filters);
  }

  @override
  String toString() {
    return 'SearchRecipeEvent.applyFilters(filters: $filters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApplyFilters &&
            const DeepCollectionEquality().equals(other._filters, _filters));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_filters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApplyFiltersCopyWith<_$_ApplyFilters> get copyWith =>
      __$$_ApplyFiltersCopyWithImpl<_$_ApplyFilters>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<IngredientModel> ingredients)
        getByIngredients,
    required TResult Function(String? searchKey) getAll,
    required TResult Function() refresh,
    required TResult Function() loadMore,
    required TResult Function(IngredientModel ingredient) addIngredient,
    required TResult Function(IngredientModel ingredient) removeIngredient,
    required TResult Function(List<RecipeFilterDTO> filters) applyFilters,
  }) {
    return applyFilters(filters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<IngredientModel> ingredients)? getByIngredients,
    TResult? Function(String? searchKey)? getAll,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
    TResult? Function(IngredientModel ingredient)? addIngredient,
    TResult? Function(IngredientModel ingredient)? removeIngredient,
    TResult? Function(List<RecipeFilterDTO> filters)? applyFilters,
  }) {
    return applyFilters?.call(filters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<IngredientModel> ingredients)? getByIngredients,
    TResult Function(String? searchKey)? getAll,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function(IngredientModel ingredient)? addIngredient,
    TResult Function(IngredientModel ingredient)? removeIngredient,
    TResult Function(List<RecipeFilterDTO> filters)? applyFilters,
    required TResult orElse(),
  }) {
    if (applyFilters != null) {
      return applyFilters(filters);
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
    required TResult Function(_AddIngredient value) addIngredient,
    required TResult Function(_RemoveIngredient value) removeIngredient,
    required TResult Function(_ApplyFilters value) applyFilters,
  }) {
    return applyFilters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetByIngredients value)? getByIngredients,
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_RemoveIngredient value)? removeIngredient,
    TResult? Function(_ApplyFilters value)? applyFilters,
  }) {
    return applyFilters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetByIngredients value)? getByIngredients,
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_RemoveIngredient value)? removeIngredient,
    TResult Function(_ApplyFilters value)? applyFilters,
    required TResult orElse(),
  }) {
    if (applyFilters != null) {
      return applyFilters(this);
    }
    return orElse();
  }
}

abstract class _ApplyFilters implements SearchRecipeEvent {
  const factory _ApplyFilters(final List<RecipeFilterDTO> filters) =
      _$_ApplyFilters;

  List<RecipeFilterDTO> get filters;
  @JsonKey(ignore: true)
  _$$_ApplyFiltersCopyWith<_$_ApplyFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchRecipeState {
  QueryDataInfo get queryInfo => throw _privateConstructorUsedError;
  List<RecipeModel>? get recipes => throw _privateConstructorUsedError;
  QueryRecipesDTO get queryDto => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchRecipeStateCopyWith<SearchRecipeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchRecipeStateCopyWith<$Res> {
  factory $SearchRecipeStateCopyWith(
          SearchRecipeState value, $Res Function(SearchRecipeState) then) =
      _$SearchRecipeStateCopyWithImpl<$Res, SearchRecipeState>;
  @useResult
  $Res call(
      {QueryDataInfo queryInfo,
      List<RecipeModel>? recipes,
      QueryRecipesDTO queryDto});

  $QueryDataInfoCopyWith<$Res> get queryInfo;
  $QueryRecipesDTOCopyWith<$Res> get queryDto;
}

/// @nodoc
class _$SearchRecipeStateCopyWithImpl<$Res, $Val extends SearchRecipeState>
    implements $SearchRecipeStateCopyWith<$Res> {
  _$SearchRecipeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryInfo = null,
    Object? recipes = freezed,
    Object? queryDto = null,
  }) {
    return _then(_value.copyWith(
      queryInfo: null == queryInfo
          ? _value.queryInfo
          : queryInfo // ignore: cast_nullable_to_non_nullable
              as QueryDataInfo,
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
  $QueryDataInfoCopyWith<$Res> get queryInfo {
    return $QueryDataInfoCopyWith<$Res>(_value.queryInfo, (value) {
      return _then(_value.copyWith(queryInfo: value) as $Val);
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
abstract class _$$_SearchRecipeStateCopyWith<$Res>
    implements $SearchRecipeStateCopyWith<$Res> {
  factory _$$_SearchRecipeStateCopyWith(_$_SearchRecipeState value,
          $Res Function(_$_SearchRecipeState) then) =
      __$$_SearchRecipeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {QueryDataInfo queryInfo,
      List<RecipeModel>? recipes,
      QueryRecipesDTO queryDto});

  @override
  $QueryDataInfoCopyWith<$Res> get queryInfo;
  @override
  $QueryRecipesDTOCopyWith<$Res> get queryDto;
}

/// @nodoc
class __$$_SearchRecipeStateCopyWithImpl<$Res>
    extends _$SearchRecipeStateCopyWithImpl<$Res, _$_SearchRecipeState>
    implements _$$_SearchRecipeStateCopyWith<$Res> {
  __$$_SearchRecipeStateCopyWithImpl(
      _$_SearchRecipeState _value, $Res Function(_$_SearchRecipeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryInfo = null,
    Object? recipes = freezed,
    Object? queryDto = null,
  }) {
    return _then(_$_SearchRecipeState(
      queryInfo: null == queryInfo
          ? _value.queryInfo
          : queryInfo // ignore: cast_nullable_to_non_nullable
              as QueryDataInfo,
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

class _$_SearchRecipeState implements _SearchRecipeState {
  const _$_SearchRecipeState(
      {required this.queryInfo,
      final List<RecipeModel>? recipes,
      required this.queryDto})
      : _recipes = recipes;

  @override
  final QueryDataInfo queryInfo;
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
    return 'SearchRecipeState(queryInfo: $queryInfo, recipes: $recipes, queryDto: $queryDto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchRecipeState &&
            (identical(other.queryInfo, queryInfo) ||
                other.queryInfo == queryInfo) &&
            const DeepCollectionEquality().equals(other._recipes, _recipes) &&
            (identical(other.queryDto, queryDto) ||
                other.queryDto == queryDto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, queryInfo,
      const DeepCollectionEquality().hash(_recipes), queryDto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchRecipeStateCopyWith<_$_SearchRecipeState> get copyWith =>
      __$$_SearchRecipeStateCopyWithImpl<_$_SearchRecipeState>(
          this, _$identity);
}

abstract class _SearchRecipeState implements SearchRecipeState {
  const factory _SearchRecipeState(
      {required final QueryDataInfo queryInfo,
      final List<RecipeModel>? recipes,
      required final QueryRecipesDTO queryDto}) = _$_SearchRecipeState;

  @override
  QueryDataInfo get queryInfo;
  @override
  List<RecipeModel>? get recipes;
  @override
  QueryRecipesDTO get queryDto;
  @override
  @JsonKey(ignore: true)
  _$$_SearchRecipeStateCopyWith<_$_SearchRecipeState> get copyWith =>
      throw _privateConstructorUsedError;
}
