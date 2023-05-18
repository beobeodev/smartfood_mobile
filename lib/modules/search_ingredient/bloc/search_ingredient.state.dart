part of 'search_ingredient.bloc.dart';

@freezed
class SearchIngredientState with _$SearchIngredientState {
  const factory SearchIngredientState.loading({
    @Default(false) bool isLoadMore,
    required PaginationQueryDTO query,
  }) = _Loading;

  const factory SearchIngredientState.success({
    @Default(false) bool isLoadMore,
    required PaginationQueryDTO query,
    required List<IngredientModel> ingredients,
    required bool canLoadMore,
  }) = _Success;

  const factory SearchIngredientState.failure({
    @Default(false) bool isLoadMore,
    required PaginationQueryDTO query,
  }) = _Failure;
}
