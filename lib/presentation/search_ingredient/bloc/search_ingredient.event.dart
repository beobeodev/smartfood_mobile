part of 'search_ingredient.bloc.dart';

@freezed
class SearchIngredientEvent with _$SearchIngredientEvent {
  const factory SearchIngredientEvent.started() = _Started;

  const factory SearchIngredientEvent.searched({
    required String text,
  }) = _Searched;

  const factory SearchIngredientEvent.filtered({
    required List<String> filters,
  }) = _Filtered;

  const factory SearchIngredientEvent.refresh() = _Refresh;

  const factory SearchIngredientEvent.loadMore() = _LoadMore;
}
