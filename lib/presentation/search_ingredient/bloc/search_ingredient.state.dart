part of 'search_ingredient.bloc.dart';

@freezed
class SearchIngredientState with _$SearchIngredientState {
  const factory SearchIngredientState.loading({
    required PaginationQueryDTO query,
    @Default(QueryType.initial) QueryType getType,
    List<IngredientModel>? ingredients,
  }) = _Loading;

  const factory SearchIngredientState.success({
    required PaginationQueryDTO query,
    @Default(QueryType.initial) QueryType getType,
    required List<IngredientModel> ingredients,
    required bool canLoadMore,
  }) = SearchIngredientSuccess;

  const factory SearchIngredientState.failure({
    required PaginationQueryDTO query,
    @Default(QueryType.initial) QueryType getType,
    List<IngredientModel>? ingredients,
    @Default(QueryErrorType.initial) QueryErrorType errorType,
  }) = SearchIngredientFailure;
}
