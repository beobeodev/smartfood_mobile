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
    required TResult Function() reset,
    required TResult Function(bool isSelected, int index) toggleCategory,
    required TResult Function(bool isSelected, int index) toggleLevel,
    required TResult Function(bool isSelected, int index) toggleCuisine,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? reset,
    TResult? Function(bool isSelected, int index)? toggleCategory,
    TResult? Function(bool isSelected, int index)? toggleLevel,
    TResult? Function(bool isSelected, int index)? toggleCuisine,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reset,
    TResult Function(bool isSelected, int index)? toggleCategory,
    TResult Function(bool isSelected, int index)? toggleLevel,
    TResult Function(bool isSelected, int index)? toggleCuisine,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Reset value) reset,
    required TResult Function(_ToggleCategory value) toggleCategory,
    required TResult Function(_ToggleLevel value) toggleLevel,
    required TResult Function(_ToggleCuisine value) toggleCuisine,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_ToggleCategory value)? toggleCategory,
    TResult? Function(_ToggleLevel value)? toggleLevel,
    TResult? Function(_ToggleCuisine value)? toggleCuisine,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reset value)? reset,
    TResult Function(_ToggleCategory value)? toggleCategory,
    TResult Function(_ToggleLevel value)? toggleLevel,
    TResult Function(_ToggleCuisine value)? toggleCuisine,
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
    required TResult Function() reset,
    required TResult Function(bool isSelected, int index) toggleCategory,
    required TResult Function(bool isSelected, int index) toggleLevel,
    required TResult Function(bool isSelected, int index) toggleCuisine,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? reset,
    TResult? Function(bool isSelected, int index)? toggleCategory,
    TResult? Function(bool isSelected, int index)? toggleLevel,
    TResult? Function(bool isSelected, int index)? toggleCuisine,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reset,
    TResult Function(bool isSelected, int index)? toggleCategory,
    TResult Function(bool isSelected, int index)? toggleLevel,
    TResult Function(bool isSelected, int index)? toggleCuisine,
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
    required TResult Function(_Reset value) reset,
    required TResult Function(_ToggleCategory value) toggleCategory,
    required TResult Function(_ToggleLevel value) toggleLevel,
    required TResult Function(_ToggleCuisine value) toggleCuisine,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_ToggleCategory value)? toggleCategory,
    TResult? Function(_ToggleLevel value)? toggleLevel,
    TResult? Function(_ToggleCuisine value)? toggleCuisine,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reset value)? reset,
    TResult Function(_ToggleCategory value)? toggleCategory,
    TResult Function(_ToggleLevel value)? toggleLevel,
    TResult Function(_ToggleCuisine value)? toggleCuisine,
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
abstract class _$$_ResetCopyWith<$Res> {
  factory _$$_ResetCopyWith(_$_Reset value, $Res Function(_$_Reset) then) =
      __$$_ResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetCopyWithImpl<$Res>
    extends _$RecipeFilterEventCopyWithImpl<$Res, _$_Reset>
    implements _$$_ResetCopyWith<$Res> {
  __$$_ResetCopyWithImpl(_$_Reset _value, $Res Function(_$_Reset) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Reset implements _Reset {
  const _$_Reset();

  @override
  String toString() {
    return 'RecipeFilterEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Reset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() reset,
    required TResult Function(bool isSelected, int index) toggleCategory,
    required TResult Function(bool isSelected, int index) toggleLevel,
    required TResult Function(bool isSelected, int index) toggleCuisine,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? reset,
    TResult? Function(bool isSelected, int index)? toggleCategory,
    TResult? Function(bool isSelected, int index)? toggleLevel,
    TResult? Function(bool isSelected, int index)? toggleCuisine,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reset,
    TResult Function(bool isSelected, int index)? toggleCategory,
    TResult Function(bool isSelected, int index)? toggleLevel,
    TResult Function(bool isSelected, int index)? toggleCuisine,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Reset value) reset,
    required TResult Function(_ToggleCategory value) toggleCategory,
    required TResult Function(_ToggleLevel value) toggleLevel,
    required TResult Function(_ToggleCuisine value) toggleCuisine,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_ToggleCategory value)? toggleCategory,
    TResult? Function(_ToggleLevel value)? toggleLevel,
    TResult? Function(_ToggleCuisine value)? toggleCuisine,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reset value)? reset,
    TResult Function(_ToggleCategory value)? toggleCategory,
    TResult Function(_ToggleLevel value)? toggleLevel,
    TResult Function(_ToggleCuisine value)? toggleCuisine,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements RecipeFilterEvent {
  const factory _Reset() = _$_Reset;
}

/// @nodoc
abstract class _$$_ToggleCategoryCopyWith<$Res> {
  factory _$$_ToggleCategoryCopyWith(
          _$_ToggleCategory value, $Res Function(_$_ToggleCategory) then) =
      __$$_ToggleCategoryCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isSelected, int index});
}

/// @nodoc
class __$$_ToggleCategoryCopyWithImpl<$Res>
    extends _$RecipeFilterEventCopyWithImpl<$Res, _$_ToggleCategory>
    implements _$$_ToggleCategoryCopyWith<$Res> {
  __$$_ToggleCategoryCopyWithImpl(
      _$_ToggleCategory _value, $Res Function(_$_ToggleCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSelected = null,
    Object? index = null,
  }) {
    return _then(_$_ToggleCategory(
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ToggleCategory implements _ToggleCategory {
  const _$_ToggleCategory({required this.isSelected, required this.index});

  @override
  final bool isSelected;
  @override
  final int index;

  @override
  String toString() {
    return 'RecipeFilterEvent.toggleCategory(isSelected: $isSelected, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ToggleCategory &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSelected, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ToggleCategoryCopyWith<_$_ToggleCategory> get copyWith =>
      __$$_ToggleCategoryCopyWithImpl<_$_ToggleCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() reset,
    required TResult Function(bool isSelected, int index) toggleCategory,
    required TResult Function(bool isSelected, int index) toggleLevel,
    required TResult Function(bool isSelected, int index) toggleCuisine,
  }) {
    return toggleCategory(isSelected, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? reset,
    TResult? Function(bool isSelected, int index)? toggleCategory,
    TResult? Function(bool isSelected, int index)? toggleLevel,
    TResult? Function(bool isSelected, int index)? toggleCuisine,
  }) {
    return toggleCategory?.call(isSelected, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reset,
    TResult Function(bool isSelected, int index)? toggleCategory,
    TResult Function(bool isSelected, int index)? toggleLevel,
    TResult Function(bool isSelected, int index)? toggleCuisine,
    required TResult orElse(),
  }) {
    if (toggleCategory != null) {
      return toggleCategory(isSelected, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Reset value) reset,
    required TResult Function(_ToggleCategory value) toggleCategory,
    required TResult Function(_ToggleLevel value) toggleLevel,
    required TResult Function(_ToggleCuisine value) toggleCuisine,
  }) {
    return toggleCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_ToggleCategory value)? toggleCategory,
    TResult? Function(_ToggleLevel value)? toggleLevel,
    TResult? Function(_ToggleCuisine value)? toggleCuisine,
  }) {
    return toggleCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reset value)? reset,
    TResult Function(_ToggleCategory value)? toggleCategory,
    TResult Function(_ToggleLevel value)? toggleLevel,
    TResult Function(_ToggleCuisine value)? toggleCuisine,
    required TResult orElse(),
  }) {
    if (toggleCategory != null) {
      return toggleCategory(this);
    }
    return orElse();
  }
}

abstract class _ToggleCategory implements RecipeFilterEvent {
  const factory _ToggleCategory(
      {required final bool isSelected,
      required final int index}) = _$_ToggleCategory;

  bool get isSelected;
  int get index;
  @JsonKey(ignore: true)
  _$$_ToggleCategoryCopyWith<_$_ToggleCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ToggleLevelCopyWith<$Res> {
  factory _$$_ToggleLevelCopyWith(
          _$_ToggleLevel value, $Res Function(_$_ToggleLevel) then) =
      __$$_ToggleLevelCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isSelected, int index});
}

/// @nodoc
class __$$_ToggleLevelCopyWithImpl<$Res>
    extends _$RecipeFilterEventCopyWithImpl<$Res, _$_ToggleLevel>
    implements _$$_ToggleLevelCopyWith<$Res> {
  __$$_ToggleLevelCopyWithImpl(
      _$_ToggleLevel _value, $Res Function(_$_ToggleLevel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSelected = null,
    Object? index = null,
  }) {
    return _then(_$_ToggleLevel(
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ToggleLevel implements _ToggleLevel {
  const _$_ToggleLevel({required this.isSelected, required this.index});

  @override
  final bool isSelected;
  @override
  final int index;

  @override
  String toString() {
    return 'RecipeFilterEvent.toggleLevel(isSelected: $isSelected, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ToggleLevel &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSelected, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ToggleLevelCopyWith<_$_ToggleLevel> get copyWith =>
      __$$_ToggleLevelCopyWithImpl<_$_ToggleLevel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() reset,
    required TResult Function(bool isSelected, int index) toggleCategory,
    required TResult Function(bool isSelected, int index) toggleLevel,
    required TResult Function(bool isSelected, int index) toggleCuisine,
  }) {
    return toggleLevel(isSelected, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? reset,
    TResult? Function(bool isSelected, int index)? toggleCategory,
    TResult? Function(bool isSelected, int index)? toggleLevel,
    TResult? Function(bool isSelected, int index)? toggleCuisine,
  }) {
    return toggleLevel?.call(isSelected, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reset,
    TResult Function(bool isSelected, int index)? toggleCategory,
    TResult Function(bool isSelected, int index)? toggleLevel,
    TResult Function(bool isSelected, int index)? toggleCuisine,
    required TResult orElse(),
  }) {
    if (toggleLevel != null) {
      return toggleLevel(isSelected, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Reset value) reset,
    required TResult Function(_ToggleCategory value) toggleCategory,
    required TResult Function(_ToggleLevel value) toggleLevel,
    required TResult Function(_ToggleCuisine value) toggleCuisine,
  }) {
    return toggleLevel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_ToggleCategory value)? toggleCategory,
    TResult? Function(_ToggleLevel value)? toggleLevel,
    TResult? Function(_ToggleCuisine value)? toggleCuisine,
  }) {
    return toggleLevel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reset value)? reset,
    TResult Function(_ToggleCategory value)? toggleCategory,
    TResult Function(_ToggleLevel value)? toggleLevel,
    TResult Function(_ToggleCuisine value)? toggleCuisine,
    required TResult orElse(),
  }) {
    if (toggleLevel != null) {
      return toggleLevel(this);
    }
    return orElse();
  }
}

abstract class _ToggleLevel implements RecipeFilterEvent {
  const factory _ToggleLevel(
      {required final bool isSelected,
      required final int index}) = _$_ToggleLevel;

  bool get isSelected;
  int get index;
  @JsonKey(ignore: true)
  _$$_ToggleLevelCopyWith<_$_ToggleLevel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ToggleCuisineCopyWith<$Res> {
  factory _$$_ToggleCuisineCopyWith(
          _$_ToggleCuisine value, $Res Function(_$_ToggleCuisine) then) =
      __$$_ToggleCuisineCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isSelected, int index});
}

/// @nodoc
class __$$_ToggleCuisineCopyWithImpl<$Res>
    extends _$RecipeFilterEventCopyWithImpl<$Res, _$_ToggleCuisine>
    implements _$$_ToggleCuisineCopyWith<$Res> {
  __$$_ToggleCuisineCopyWithImpl(
      _$_ToggleCuisine _value, $Res Function(_$_ToggleCuisine) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSelected = null,
    Object? index = null,
  }) {
    return _then(_$_ToggleCuisine(
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ToggleCuisine implements _ToggleCuisine {
  const _$_ToggleCuisine({required this.isSelected, required this.index});

  @override
  final bool isSelected;
  @override
  final int index;

  @override
  String toString() {
    return 'RecipeFilterEvent.toggleCuisine(isSelected: $isSelected, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ToggleCuisine &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSelected, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ToggleCuisineCopyWith<_$_ToggleCuisine> get copyWith =>
      __$$_ToggleCuisineCopyWithImpl<_$_ToggleCuisine>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() reset,
    required TResult Function(bool isSelected, int index) toggleCategory,
    required TResult Function(bool isSelected, int index) toggleLevel,
    required TResult Function(bool isSelected, int index) toggleCuisine,
  }) {
    return toggleCuisine(isSelected, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? reset,
    TResult? Function(bool isSelected, int index)? toggleCategory,
    TResult? Function(bool isSelected, int index)? toggleLevel,
    TResult? Function(bool isSelected, int index)? toggleCuisine,
  }) {
    return toggleCuisine?.call(isSelected, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reset,
    TResult Function(bool isSelected, int index)? toggleCategory,
    TResult Function(bool isSelected, int index)? toggleLevel,
    TResult Function(bool isSelected, int index)? toggleCuisine,
    required TResult orElse(),
  }) {
    if (toggleCuisine != null) {
      return toggleCuisine(isSelected, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Reset value) reset,
    required TResult Function(_ToggleCategory value) toggleCategory,
    required TResult Function(_ToggleLevel value) toggleLevel,
    required TResult Function(_ToggleCuisine value) toggleCuisine,
  }) {
    return toggleCuisine(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_ToggleCategory value)? toggleCategory,
    TResult? Function(_ToggleLevel value)? toggleLevel,
    TResult? Function(_ToggleCuisine value)? toggleCuisine,
  }) {
    return toggleCuisine?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reset value)? reset,
    TResult Function(_ToggleCategory value)? toggleCategory,
    TResult Function(_ToggleLevel value)? toggleLevel,
    TResult Function(_ToggleCuisine value)? toggleCuisine,
    required TResult orElse(),
  }) {
    if (toggleCuisine != null) {
      return toggleCuisine(this);
    }
    return orElse();
  }
}

abstract class _ToggleCuisine implements RecipeFilterEvent {
  const factory _ToggleCuisine(
      {required final bool isSelected,
      required final int index}) = _$_ToggleCuisine;

  bool get isSelected;
  int get index;
  @JsonKey(ignore: true)
  _$$_ToggleCuisineCopyWith<_$_ToggleCuisine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RecipeFilterState {
  List<CategoryModel> get categories => throw _privateConstructorUsedError;
  List<CuisineModel> get cuisines => throw _privateConstructorUsedError;
  List<LevelModel> get levels => throw _privateConstructorUsedError;
  QueryStatus get status => throw _privateConstructorUsedError;

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
      List<LevelModel> levels,
      QueryStatus status});
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
    Object? status = null,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QueryStatus,
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
      List<LevelModel> levels,
      QueryStatus status});
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
    Object? status = null,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QueryStatus,
    ));
  }
}

/// @nodoc

class _$_RecipeFilterState implements _RecipeFilterState {
  const _$_RecipeFilterState(
      {final List<CategoryModel> categories = const [],
      final List<CuisineModel> cuisines = const [],
      final List<LevelModel> levels = const [],
      this.status = QueryStatus.loading})
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
  @JsonKey()
  final QueryStatus status;

  @override
  String toString() {
    return 'RecipeFilterState(categories: $categories, cuisines: $cuisines, levels: $levels, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeFilterState &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._cuisines, _cuisines) &&
            const DeepCollectionEquality().equals(other._levels, _levels) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_cuisines),
      const DeepCollectionEquality().hash(_levels),
      status);

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
      final List<LevelModel> levels,
      final QueryStatus status}) = _$_RecipeFilterState;

  @override
  List<CategoryModel> get categories;
  @override
  List<CuisineModel> get cuisines;
  @override
  List<LevelModel> get levels;
  @override
  QueryStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeFilterStateCopyWith<_$_RecipeFilterState> get copyWith =>
      throw _privateConstructorUsedError;
}
