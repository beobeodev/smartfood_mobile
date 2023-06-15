import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/common/constants/enums/query_error_type.enum.dart';
import 'package:smarthealthy/common/constants/enums/query_type.enum.dart';
import 'package:smarthealthy/common/constants/enums/sort_type.enum.dart';
import 'package:smarthealthy/data/dtos/get_ingredient_result.dto.dart';
import 'package:smarthealthy/data/dtos/pagination/pagination_query.dto.dart';
import 'package:smarthealthy/data/models/ingredient.model.dart';
import 'package:smarthealthy/data/dtos/sort.dto.dart';
import 'package:smarthealthy/data/repositories/ingredient.repository.dart';

part 'search_ingredient.event.dart';
part 'search_ingredient.state.dart';
part 'search_ingredient.bloc.freezed.dart';

class SearchIngredientBloc
    extends Bloc<SearchIngredientEvent, SearchIngredientState> {
  final IngredientRepository _ingredientRepository;

  SearchIngredientBloc({required IngredientRepository ingredientRepository})
      : _ingredientRepository = ingredientRepository,
        super(
          const SearchIngredientState.loading(
            query: PaginationQueryDTO(
              sortBy: [SortDTO('name', SortType.ASC)],
              limit: 48,
            ),
          ),
        ) {
    on<SearchIngredientEvent>((events, emit) async {
      await events.map(
        started: (_Started event) => _onStarted(event, emit),
        filtered: (_Filtered event) {},
        loadMore: (_LoadMore event) => _onLoadMore(event, emit),
        refresh: (_Refresh event) => _onRefresh(event, emit),
        searched: (_Searched event) => _onSearched(event, emit),
      );
    });
    add(
      const _Started(),
    );
  }

  Future<void> _onStarted(
    _Started event,
    Emitter<SearchIngredientState> emit,
  ) async {
    await _handleInitAndSearch(emit);
  }

  Future<void> _onSearched(
    _Searched event,
    Emitter<SearchIngredientState> emit,
  ) async {
    await _handleInitAndSearch(emit, event.text);
  }

  Future<void> _onLoadMore(
    _LoadMore event,
    Emitter<SearchIngredientState> emit,
  ) async {
    if (state is! SearchIngredientSuccess) {
      return;
    }

    final query = state.query.copyWith(page: state.query.page + 1);

    try {
      final getIngredientDTO = await _getIngredients(
        query,
      );
      final ingredients = [...state.ingredients!, ...getIngredientDTO.data];

      emit(
        SearchIngredientSuccess(
          query: query,
          ingredients: ingredients,
          getType: QueryType.loadMore,
          canLoadMore: getIngredientDTO.meta.canLoadMore,
        ),
      );
    } catch (_) {
      emit(
        SearchIngredientFailure(
          query: query,
          getType: QueryType.loadMore,
          errorType: QueryErrorType.loadMore,
        ),
      );
    }
  }

  Future<void> _onRefresh(
    _Refresh event,
    Emitter<SearchIngredientState> emit,
  ) async {
    if (state is! SearchIngredientSuccess) {
      return;
    }

    final query = state.query.copyWith(page: 1);

    emit(_Loading(query: query));

    try {
      final GetIngredientResultDTO getIngredientDTO = await _getIngredients(
        query,
      );

      emit(
        SearchIngredientSuccess(
          query: query,
          ingredients: getIngredientDTO.data,
          canLoadMore: getIngredientDTO.meta.canLoadMore,
        ),
      );
    } catch (_) {
      emit(
        SearchIngredientFailure(
          query: query,
          getType: QueryType.refresh,
          errorType: QueryErrorType.refresh,
        ),
      );
    }
  }

  Future<GetIngredientResultDTO> _getIngredients(
    PaginationQueryDTO query,
  ) async {
    return await _ingredientRepository.getIngredients(query);
  }

  Future<void> _handleInitAndSearch(
    Emitter<SearchIngredientState> emit, [
    String? searchText,
  ]) async {
    PaginationQueryDTO query = state.query;
    if (searchText != null) {
      query = query.copyWith(search: searchText, page: 1);
    }

    emit(_Loading(query: query));

    try {
      final getIngredientDTO = await _getIngredients(
        query,
      );

      if (searchText != null && getIngredientDTO.data.isEmpty) {
        emit(
          SearchIngredientFailure(
            query: query,
            errorType: QueryErrorType.notFound,
          ),
        );
      } else {
        emit(
          SearchIngredientSuccess(
            ingredients: getIngredientDTO.data,
            query: query,
            canLoadMore: getIngredientDTO.meta.canLoadMore,
          ),
        );
      }
    } catch (_) {
      emit(SearchIngredientFailure(query: query));
    }
  }
}
