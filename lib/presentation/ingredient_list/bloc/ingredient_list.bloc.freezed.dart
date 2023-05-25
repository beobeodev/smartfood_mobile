// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient_list.bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IngredientListEvent {
  IngredientModel get ingredient => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IngredientModel ingredient) updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IngredientModel ingredient)? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IngredientModel ingredient)? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Updated value) updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Updated value)? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Updated value)? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IngredientListEventCopyWith<IngredientListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientListEventCopyWith<$Res> {
  factory $IngredientListEventCopyWith(
          IngredientListEvent value, $Res Function(IngredientListEvent) then) =
      _$IngredientListEventCopyWithImpl<$Res, IngredientListEvent>;
  @useResult
  $Res call({IngredientModel ingredient});

  $IngredientModelCopyWith<$Res> get ingredient;
}

/// @nodoc
class _$IngredientListEventCopyWithImpl<$Res, $Val extends IngredientListEvent>
    implements $IngredientListEventCopyWith<$Res> {
  _$IngredientListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredient = null,
  }) {
    return _then(_value.copyWith(
      ingredient: null == ingredient
          ? _value.ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as IngredientModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IngredientModelCopyWith<$Res> get ingredient {
    return $IngredientModelCopyWith<$Res>(_value.ingredient, (value) {
      return _then(_value.copyWith(ingredient: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UpdatedCopyWith<$Res>
    implements $IngredientListEventCopyWith<$Res> {
  factory _$$_UpdatedCopyWith(
          _$_Updated value, $Res Function(_$_Updated) then) =
      __$$_UpdatedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IngredientModel ingredient});

  @override
  $IngredientModelCopyWith<$Res> get ingredient;
}

/// @nodoc
class __$$_UpdatedCopyWithImpl<$Res>
    extends _$IngredientListEventCopyWithImpl<$Res, _$_Updated>
    implements _$$_UpdatedCopyWith<$Res> {
  __$$_UpdatedCopyWithImpl(_$_Updated _value, $Res Function(_$_Updated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredient = null,
  }) {
    return _then(_$_Updated(
      null == ingredient
          ? _value.ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as IngredientModel,
    ));
  }
}

/// @nodoc

class _$_Updated implements _Updated {
  const _$_Updated(this.ingredient);

  @override
  final IngredientModel ingredient;

  @override
  String toString() {
    return 'IngredientListEvent.updated(ingredient: $ingredient)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Updated &&
            (identical(other.ingredient, ingredient) ||
                other.ingredient == ingredient));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ingredient);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdatedCopyWith<_$_Updated> get copyWith =>
      __$$_UpdatedCopyWithImpl<_$_Updated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IngredientModel ingredient) updated,
  }) {
    return updated(ingredient);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IngredientModel ingredient)? updated,
  }) {
    return updated?.call(ingredient);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IngredientModel ingredient)? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(ingredient);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Updated value) updated,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Updated value)? updated,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Updated value)? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class _Updated implements IngredientListEvent {
  const factory _Updated(final IngredientModel ingredient) = _$_Updated;

  @override
  IngredientModel get ingredient;
  @override
  @JsonKey(ignore: true)
  _$$_UpdatedCopyWith<_$_Updated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$IngredientListState {
  List<IngredientModel> get ingredients => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IngredientListStateCopyWith<IngredientListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientListStateCopyWith<$Res> {
  factory $IngredientListStateCopyWith(
          IngredientListState value, $Res Function(IngredientListState) then) =
      _$IngredientListStateCopyWithImpl<$Res, IngredientListState>;
  @useResult
  $Res call({List<IngredientModel> ingredients});
}

/// @nodoc
class _$IngredientListStateCopyWithImpl<$Res, $Val extends IngredientListState>
    implements $IngredientListStateCopyWith<$Res> {
  _$IngredientListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredients = null,
  }) {
    return _then(_value.copyWith(
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<IngredientModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IngredientListStateCopyWith<$Res>
    implements $IngredientListStateCopyWith<$Res> {
  factory _$$_IngredientListStateCopyWith(_$_IngredientListState value,
          $Res Function(_$_IngredientListState) then) =
      __$$_IngredientListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<IngredientModel> ingredients});
}

/// @nodoc
class __$$_IngredientListStateCopyWithImpl<$Res>
    extends _$IngredientListStateCopyWithImpl<$Res, _$_IngredientListState>
    implements _$$_IngredientListStateCopyWith<$Res> {
  __$$_IngredientListStateCopyWithImpl(_$_IngredientListState _value,
      $Res Function(_$_IngredientListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredients = null,
  }) {
    return _then(_$_IngredientListState(
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<IngredientModel>,
    ));
  }
}

/// @nodoc

class _$_IngredientListState implements _IngredientListState {
  const _$_IngredientListState(
      {final List<IngredientModel> ingredients = const []})
      : _ingredients = ingredients;

  final List<IngredientModel> _ingredients;
  @override
  @JsonKey()
  List<IngredientModel> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  String toString() {
    return 'IngredientListState(ingredients: $ingredients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IngredientListState &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_ingredients));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IngredientListStateCopyWith<_$_IngredientListState> get copyWith =>
      __$$_IngredientListStateCopyWithImpl<_$_IngredientListState>(
          this, _$identity);
}

abstract class _IngredientListState implements IngredientListState {
  const factory _IngredientListState(
      {final List<IngredientModel> ingredients}) = _$_IngredientListState;

  @override
  List<IngredientModel> get ingredients;
  @override
  @JsonKey(ignore: true)
  _$$_IngredientListStateCopyWith<_$_IngredientListState> get copyWith =>
      throw _privateConstructorUsedError;
}
