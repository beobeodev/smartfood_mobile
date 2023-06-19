part of 'search_ingredient.bloc.dart';

@freezed
class SearchIngredientEvent with _$SearchIngredientEvent {
  const factory SearchIngredientEvent.getAll({String? searchKey}) = _GetAll;

  const factory SearchIngredientEvent.refresh() = _Refresh;

  const factory SearchIngredientEvent.loadMore() = _LoadMore;
}
