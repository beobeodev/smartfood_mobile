part of 'search_ingredient.bloc.dart';

@freezed
class SearchIngredientState with _$SearchIngredientState {
  const factory SearchIngredientState.loading({
    required PaginationQueryDTO query,
    @Default(GetIngredientType.initial) GetIngredientType getType,
    List<IngredientModel>? ingredients,
  }) = _Loading;

  const factory SearchIngredientState.success({
    required PaginationQueryDTO query,
    @Default(GetIngredientType.initial) GetIngredientType getType,
    required List<IngredientModel> ingredients,
    required bool canLoadMore,
  }) = SearchIngredientSuccess;

  const factory SearchIngredientState.failure({
    required PaginationQueryDTO query,
    @Default(GetIngredientType.initial) GetIngredientType getType,
    List<IngredientModel>? ingredients,
    @Default(GetIngredientErrorType.initial) GetIngredientErrorType errorType,
  }) = SearchIngredientFailure;
}
