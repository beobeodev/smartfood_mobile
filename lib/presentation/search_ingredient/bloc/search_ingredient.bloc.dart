import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/common/constants/enums/query_error_type.enum.dart';
import 'package:smarthealthy/common/constants/enums/query_status.enum.dart';
import 'package:smarthealthy/common/constants/enums/query_type.enum.dart';
import 'package:smarthealthy/common/constants/enums/sort_type.enum.dart';
import 'package:smarthealthy/data/dtos/get_ingredient_result.dto.dart';
import 'package:smarthealthy/data/dtos/pagination/pagination_query.dto.dart';
import 'package:smarthealthy/data/dtos/query_data_status.dto.dart';
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
          const SearchIngredientState(
            paginationDto: PaginationQueryDTO(
              sortBy: [SortDTO('name', SortType.ASC)],
              limit: 48,
            ),
            queryInfo: QueryDataInfo(status: QueryStatus.loading),
          ),
        ) {
    on<SearchIngredientEvent>((events, emit) async {
      await events.map(
        getAll: (event) => _onGetAll(event, emit),
        loadMore: (_LoadMore event) => _onLoadMore(event, emit),
        refresh: (_Refresh event) => _onRefresh(event, emit),
      );
    });
    add(const SearchIngredientEvent.getAll());
  }

  Future<void> _onGetAll(
    _GetAll event,
    Emitter<SearchIngredientState> emit,
  ) async {
    emit(
      state.copyWith
          .queryInfo(status: QueryStatus.loading, type: QueryType.initial)
          .copyWith
          .paginationDto(search: event.searchKey, page: 1),
    );

    try {
      final ingredientDto = await _getIngredients();

      emit(
        state
            .copyWith(
              ingredients: ingredientDto.data,
            )
            .copyWith
            .queryInfo(
              status: QueryStatus.success,
              canLoadMore: ingredientDto.meta.canLoadMore,
            ),
      );
    } catch (err) {
      emit(
        state.copyWith.queryInfo(
          status: QueryStatus.error,
          errorType: QueryErrorType.initial,
        ),
      );
    }
  }

  Future<void> _onLoadMore(
    _LoadMore event,
    Emitter<SearchIngredientState> emit,
  ) async {
    emit(
      state.copyWith
          .paginationDto(page: state.paginationDto.page + 1)
          .copyWith
          .queryInfo(type: QueryType.loadMore, status: QueryStatus.loading),
    );

    try {
      final ingredientDto = await _getIngredients();

      emit(
        state
            .copyWith(
              ingredients: [
                ...state.ingredients!,
                ...ingredientDto.data,
              ],
            )
            .copyWith
            .queryInfo(
              canLoadMore: ingredientDto.meta.canLoadMore,
              status: QueryStatus.success,
            ),
      );
    } catch (err) {
      emit(
        state.copyWith.queryInfo(
          status: QueryStatus.error,
          errorType: QueryErrorType.loadMore,
        ),
      );
    }
  }

  Future<void> _onRefresh(
    _Refresh event,
    Emitter<SearchIngredientState> emit,
  ) async {
    emit(
      state.copyWith
          .paginationDto(page: 1)
          .copyWith
          .queryInfo(type: QueryType.refresh, status: QueryStatus.loading),
    );

    try {
      final ingredientDto = await _getIngredients();

      emit(
        state.copyWith
            .queryInfo(
              canLoadMore: ingredientDto.meta.canLoadMore,
              status: QueryStatus.success,
            )
            .copyWith(
              ingredients: ingredientDto.data,
            ),
      );
    } catch (err) {
      emit(
        state.copyWith.queryInfo(
          status: QueryStatus.error,
          errorType: QueryErrorType.refresh,
        ),
      );
    }
  }

  Future<GetIngredientResultDTO> _getIngredients() async {
    final pagination = state.paginationDto;

    final ingredientDto =
        await _ingredientRepository.getIngredients(pagination);

    return ingredientDto;
  }
}
