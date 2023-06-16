part of 'search_ingredient.bloc.dart';

@freezed
class SearchIngredientState with _$SearchIngredientState {
  const factory SearchIngredientState({
    required PaginationQueryDTO paginationDto,
    required QueryDataInfo queryInfo,
    List<IngredientModel>? ingredients,
  }) = _SearchIngredientState;
}
