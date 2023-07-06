// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diary.bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DiaryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime? date) getByDay,
    required TResult Function(List<MealModel> meals, MealType type) addMeals,
    required TResult Function(String mealId, MealType type) deleteMeal,
    required TResult Function() refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime? date)? getByDay,
    TResult? Function(List<MealModel> meals, MealType type)? addMeals,
    TResult? Function(String mealId, MealType type)? deleteMeal,
    TResult? Function()? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime? date)? getByDay,
    TResult Function(List<MealModel> meals, MealType type)? addMeals,
    TResult Function(String mealId, MealType type)? deleteMeal,
    TResult Function()? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetByDay value) getByDay,
    required TResult Function(_AddMeals value) addMeals,
    required TResult Function(_DeleteMeal value) deleteMeal,
    required TResult Function(_Refresh value) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetByDay value)? getByDay,
    TResult? Function(_AddMeals value)? addMeals,
    TResult? Function(_DeleteMeal value)? deleteMeal,
    TResult? Function(_Refresh value)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetByDay value)? getByDay,
    TResult Function(_AddMeals value)? addMeals,
    TResult Function(_DeleteMeal value)? deleteMeal,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiaryEventCopyWith<$Res> {
  factory $DiaryEventCopyWith(
          DiaryEvent value, $Res Function(DiaryEvent) then) =
      _$DiaryEventCopyWithImpl<$Res, DiaryEvent>;
}

/// @nodoc
class _$DiaryEventCopyWithImpl<$Res, $Val extends DiaryEvent>
    implements $DiaryEventCopyWith<$Res> {
  _$DiaryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetByDayCopyWith<$Res> {
  factory _$$_GetByDayCopyWith(
          _$_GetByDay value, $Res Function(_$_GetByDay) then) =
      __$$_GetByDayCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime? date});
}

/// @nodoc
class __$$_GetByDayCopyWithImpl<$Res>
    extends _$DiaryEventCopyWithImpl<$Res, _$_GetByDay>
    implements _$$_GetByDayCopyWith<$Res> {
  __$$_GetByDayCopyWithImpl(
      _$_GetByDay _value, $Res Function(_$_GetByDay) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(_$_GetByDay(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_GetByDay implements _GetByDay {
  const _$_GetByDay({this.date});

  @override
  final DateTime? date;

  @override
  String toString() {
    return 'DiaryEvent.getByDay(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetByDay &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetByDayCopyWith<_$_GetByDay> get copyWith =>
      __$$_GetByDayCopyWithImpl<_$_GetByDay>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime? date) getByDay,
    required TResult Function(List<MealModel> meals, MealType type) addMeals,
    required TResult Function(String mealId, MealType type) deleteMeal,
    required TResult Function() refresh,
  }) {
    return getByDay(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime? date)? getByDay,
    TResult? Function(List<MealModel> meals, MealType type)? addMeals,
    TResult? Function(String mealId, MealType type)? deleteMeal,
    TResult? Function()? refresh,
  }) {
    return getByDay?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime? date)? getByDay,
    TResult Function(List<MealModel> meals, MealType type)? addMeals,
    TResult Function(String mealId, MealType type)? deleteMeal,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (getByDay != null) {
      return getByDay(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetByDay value) getByDay,
    required TResult Function(_AddMeals value) addMeals,
    required TResult Function(_DeleteMeal value) deleteMeal,
    required TResult Function(_Refresh value) refresh,
  }) {
    return getByDay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetByDay value)? getByDay,
    TResult? Function(_AddMeals value)? addMeals,
    TResult? Function(_DeleteMeal value)? deleteMeal,
    TResult? Function(_Refresh value)? refresh,
  }) {
    return getByDay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetByDay value)? getByDay,
    TResult Function(_AddMeals value)? addMeals,
    TResult Function(_DeleteMeal value)? deleteMeal,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (getByDay != null) {
      return getByDay(this);
    }
    return orElse();
  }
}

abstract class _GetByDay implements DiaryEvent {
  const factory _GetByDay({final DateTime? date}) = _$_GetByDay;

  DateTime? get date;
  @JsonKey(ignore: true)
  _$$_GetByDayCopyWith<_$_GetByDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddMealsCopyWith<$Res> {
  factory _$$_AddMealsCopyWith(
          _$_AddMeals value, $Res Function(_$_AddMeals) then) =
      __$$_AddMealsCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MealModel> meals, MealType type});
}

/// @nodoc
class __$$_AddMealsCopyWithImpl<$Res>
    extends _$DiaryEventCopyWithImpl<$Res, _$_AddMeals>
    implements _$$_AddMealsCopyWith<$Res> {
  __$$_AddMealsCopyWithImpl(
      _$_AddMeals _value, $Res Function(_$_AddMeals) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meals = null,
    Object? type = null,
  }) {
    return _then(_$_AddMeals(
      null == meals
          ? _value._meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<MealModel>,
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MealType,
    ));
  }
}

/// @nodoc

class _$_AddMeals implements _AddMeals {
  const _$_AddMeals(final List<MealModel> meals, this.type) : _meals = meals;

  final List<MealModel> _meals;
  @override
  List<MealModel> get meals {
    if (_meals is EqualUnmodifiableListView) return _meals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meals);
  }

  @override
  final MealType type;

  @override
  String toString() {
    return 'DiaryEvent.addMeals(meals: $meals, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddMeals &&
            const DeepCollectionEquality().equals(other._meals, _meals) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_meals), type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddMealsCopyWith<_$_AddMeals> get copyWith =>
      __$$_AddMealsCopyWithImpl<_$_AddMeals>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime? date) getByDay,
    required TResult Function(List<MealModel> meals, MealType type) addMeals,
    required TResult Function(String mealId, MealType type) deleteMeal,
    required TResult Function() refresh,
  }) {
    return addMeals(meals, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime? date)? getByDay,
    TResult? Function(List<MealModel> meals, MealType type)? addMeals,
    TResult? Function(String mealId, MealType type)? deleteMeal,
    TResult? Function()? refresh,
  }) {
    return addMeals?.call(meals, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime? date)? getByDay,
    TResult Function(List<MealModel> meals, MealType type)? addMeals,
    TResult Function(String mealId, MealType type)? deleteMeal,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (addMeals != null) {
      return addMeals(meals, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetByDay value) getByDay,
    required TResult Function(_AddMeals value) addMeals,
    required TResult Function(_DeleteMeal value) deleteMeal,
    required TResult Function(_Refresh value) refresh,
  }) {
    return addMeals(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetByDay value)? getByDay,
    TResult? Function(_AddMeals value)? addMeals,
    TResult? Function(_DeleteMeal value)? deleteMeal,
    TResult? Function(_Refresh value)? refresh,
  }) {
    return addMeals?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetByDay value)? getByDay,
    TResult Function(_AddMeals value)? addMeals,
    TResult Function(_DeleteMeal value)? deleteMeal,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (addMeals != null) {
      return addMeals(this);
    }
    return orElse();
  }
}

abstract class _AddMeals implements DiaryEvent {
  const factory _AddMeals(final List<MealModel> meals, final MealType type) =
      _$_AddMeals;

  List<MealModel> get meals;
  MealType get type;
  @JsonKey(ignore: true)
  _$$_AddMealsCopyWith<_$_AddMeals> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteMealCopyWith<$Res> {
  factory _$$_DeleteMealCopyWith(
          _$_DeleteMeal value, $Res Function(_$_DeleteMeal) then) =
      __$$_DeleteMealCopyWithImpl<$Res>;
  @useResult
  $Res call({String mealId, MealType type});
}

/// @nodoc
class __$$_DeleteMealCopyWithImpl<$Res>
    extends _$DiaryEventCopyWithImpl<$Res, _$_DeleteMeal>
    implements _$$_DeleteMealCopyWith<$Res> {
  __$$_DeleteMealCopyWithImpl(
      _$_DeleteMeal _value, $Res Function(_$_DeleteMeal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mealId = null,
    Object? type = null,
  }) {
    return _then(_$_DeleteMeal(
      null == mealId
          ? _value.mealId
          : mealId // ignore: cast_nullable_to_non_nullable
              as String,
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MealType,
    ));
  }
}

/// @nodoc

class _$_DeleteMeal implements _DeleteMeal {
  const _$_DeleteMeal(this.mealId, this.type);

  @override
  final String mealId;
  @override
  final MealType type;

  @override
  String toString() {
    return 'DiaryEvent.deleteMeal(mealId: $mealId, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteMeal &&
            (identical(other.mealId, mealId) || other.mealId == mealId) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mealId, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteMealCopyWith<_$_DeleteMeal> get copyWith =>
      __$$_DeleteMealCopyWithImpl<_$_DeleteMeal>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime? date) getByDay,
    required TResult Function(List<MealModel> meals, MealType type) addMeals,
    required TResult Function(String mealId, MealType type) deleteMeal,
    required TResult Function() refresh,
  }) {
    return deleteMeal(mealId, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime? date)? getByDay,
    TResult? Function(List<MealModel> meals, MealType type)? addMeals,
    TResult? Function(String mealId, MealType type)? deleteMeal,
    TResult? Function()? refresh,
  }) {
    return deleteMeal?.call(mealId, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime? date)? getByDay,
    TResult Function(List<MealModel> meals, MealType type)? addMeals,
    TResult Function(String mealId, MealType type)? deleteMeal,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (deleteMeal != null) {
      return deleteMeal(mealId, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetByDay value) getByDay,
    required TResult Function(_AddMeals value) addMeals,
    required TResult Function(_DeleteMeal value) deleteMeal,
    required TResult Function(_Refresh value) refresh,
  }) {
    return deleteMeal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetByDay value)? getByDay,
    TResult? Function(_AddMeals value)? addMeals,
    TResult? Function(_DeleteMeal value)? deleteMeal,
    TResult? Function(_Refresh value)? refresh,
  }) {
    return deleteMeal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetByDay value)? getByDay,
    TResult Function(_AddMeals value)? addMeals,
    TResult Function(_DeleteMeal value)? deleteMeal,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (deleteMeal != null) {
      return deleteMeal(this);
    }
    return orElse();
  }
}

abstract class _DeleteMeal implements DiaryEvent {
  const factory _DeleteMeal(final String mealId, final MealType type) =
      _$_DeleteMeal;

  String get mealId;
  MealType get type;
  @JsonKey(ignore: true)
  _$$_DeleteMealCopyWith<_$_DeleteMeal> get copyWith =>
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
    extends _$DiaryEventCopyWithImpl<$Res, _$_Refresh>
    implements _$$_RefreshCopyWith<$Res> {
  __$$_RefreshCopyWithImpl(_$_Refresh _value, $Res Function(_$_Refresh) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Refresh implements _Refresh {
  const _$_Refresh();

  @override
  String toString() {
    return 'DiaryEvent.refresh()';
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
    required TResult Function(DateTime? date) getByDay,
    required TResult Function(List<MealModel> meals, MealType type) addMeals,
    required TResult Function(String mealId, MealType type) deleteMeal,
    required TResult Function() refresh,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime? date)? getByDay,
    TResult? Function(List<MealModel> meals, MealType type)? addMeals,
    TResult? Function(String mealId, MealType type)? deleteMeal,
    TResult? Function()? refresh,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime? date)? getByDay,
    TResult Function(List<MealModel> meals, MealType type)? addMeals,
    TResult Function(String mealId, MealType type)? deleteMeal,
    TResult Function()? refresh,
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
    required TResult Function(_GetByDay value) getByDay,
    required TResult Function(_AddMeals value) addMeals,
    required TResult Function(_DeleteMeal value) deleteMeal,
    required TResult Function(_Refresh value) refresh,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetByDay value)? getByDay,
    TResult? Function(_AddMeals value)? addMeals,
    TResult? Function(_DeleteMeal value)? deleteMeal,
    TResult? Function(_Refresh value)? refresh,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetByDay value)? getByDay,
    TResult Function(_AddMeals value)? addMeals,
    TResult Function(_DeleteMeal value)? deleteMeal,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements DiaryEvent {
  const factory _Refresh() = _$_Refresh;
}

/// @nodoc
mixin _$DiaryState {
  QueryStatus get status => throw _privateConstructorUsedError;
  List<DiaryModel> get diaries => throw _privateConstructorUsedError;
  DateTime get currentDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DiaryStateCopyWith<DiaryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiaryStateCopyWith<$Res> {
  factory $DiaryStateCopyWith(
          DiaryState value, $Res Function(DiaryState) then) =
      _$DiaryStateCopyWithImpl<$Res, DiaryState>;
  @useResult
  $Res call(
      {QueryStatus status, List<DiaryModel> diaries, DateTime currentDate});
}

/// @nodoc
class _$DiaryStateCopyWithImpl<$Res, $Val extends DiaryState>
    implements $DiaryStateCopyWith<$Res> {
  _$DiaryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? diaries = null,
    Object? currentDate = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QueryStatus,
      diaries: null == diaries
          ? _value.diaries
          : diaries // ignore: cast_nullable_to_non_nullable
              as List<DiaryModel>,
      currentDate: null == currentDate
          ? _value.currentDate
          : currentDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DiaryStateCopyWith<$Res>
    implements $DiaryStateCopyWith<$Res> {
  factory _$$_DiaryStateCopyWith(
          _$_DiaryState value, $Res Function(_$_DiaryState) then) =
      __$$_DiaryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {QueryStatus status, List<DiaryModel> diaries, DateTime currentDate});
}

/// @nodoc
class __$$_DiaryStateCopyWithImpl<$Res>
    extends _$DiaryStateCopyWithImpl<$Res, _$_DiaryState>
    implements _$$_DiaryStateCopyWith<$Res> {
  __$$_DiaryStateCopyWithImpl(
      _$_DiaryState _value, $Res Function(_$_DiaryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? diaries = null,
    Object? currentDate = null,
  }) {
    return _then(_$_DiaryState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QueryStatus,
      diaries: null == diaries
          ? _value.diaries
          : diaries // ignore: cast_nullable_to_non_nullable
              as List<DiaryModel>,
      currentDate: null == currentDate
          ? _value.currentDate
          : currentDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_DiaryState extends _DiaryState {
  const _$_DiaryState(
      {this.status = QueryStatus.loading,
      this.diaries = const [],
      required this.currentDate})
      : super._();

  @override
  @JsonKey()
  final QueryStatus status;
  @override
  @JsonKey()
  final List<DiaryModel> diaries;
  @override
  final DateTime currentDate;

  @override
  String toString() {
    return 'DiaryState(status: $status, diaries: $diaries, currentDate: $currentDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiaryState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.diaries, diaries) &&
            (identical(other.currentDate, currentDate) ||
                other.currentDate == currentDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(diaries), currentDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DiaryStateCopyWith<_$_DiaryState> get copyWith =>
      __$$_DiaryStateCopyWithImpl<_$_DiaryState>(this, _$identity);
}

abstract class _DiaryState extends DiaryState {
  const factory _DiaryState(
      {final QueryStatus status,
      final List<DiaryModel> diaries,
      required final DateTime currentDate}) = _$_DiaryState;
  const _DiaryState._() : super._();

  @override
  QueryStatus get status;
  @override
  List<DiaryModel> get diaries;
  @override
  DateTime get currentDate;
  @override
  @JsonKey(ignore: true)
  _$$_DiaryStateCopyWith<_$_DiaryState> get copyWith =>
      throw _privateConstructorUsedError;
}
