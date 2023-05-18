part of 'search_ingredient.bloc.dart';

@freezed
class SearchIngredientEvent with _$SearchIngredientEvent {
  const factory SearchIngredientEvent.get({
    @Default(false) bool isLoadMore,
    required PaginationQueryDTO query,
  }) = _Get;
}
