import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/common/constants/enums/query_error_type.enum.dart';
import 'package:smarthealthy/common/constants/enums/query_status.enum.dart';
import 'package:smarthealthy/common/constants/enums/query_type.enum.dart';
import 'package:smarthealthy/data/dtos/get_recipes_result.dto.dart';
import 'package:smarthealthy/data/dtos/pagination/pagination_query.dto.dart';
import 'package:smarthealthy/data/dtos/query_data_status.dto.dart';
import 'package:smarthealthy/data/dtos/query_recipes.dto.dart';
import 'package:smarthealthy/data/dtos/recipe_filter.dto.dart';
import 'package:smarthealthy/data/models/recipe.model.dart';
import 'package:smarthealthy/data/repositories/recipe.repository.dart';
import 'package:smarthealthy/presentation/recipe_filter/recipe_filter.dart';

part 'recipe_list.event.dart';
part 'recipe_list.state.dart';
part 'recipe_list.bloc.freezed.dart';

class RecipeListBloc extends Bloc<RecipeListEvent, RecipeListState> {
  final RecipeRepository _recipeRepository;
  final RecipeFilterBloc _recipeFilterBloc;

  RecipeListBloc({
    required RecipeRepository recipeRepository,
    required RecipeFilterBloc recipeFilterBloc,
  })  : _recipeRepository = recipeRepository,
        _recipeFilterBloc = recipeFilterBloc,
        super(
          const RecipeListState(
            queryStatus: QueryDataStatusDTO(
              status: QueryStatus.loading,
            ),
            queryDto: QueryRecipesDTO(
              pagination: PaginationQueryDTO<RecipeFilterDTO>(limit: 20),
            ),
          ),
        ) {
    on<RecipeListEvent>((event, emit) async {
      await event.map(
        getByIngredients: (event) => _onGetByIngredients(event, emit),
        getAll: (event) => _onGetAll(event, emit),
        refresh: (event) => _onRefresh(event, emit),
        loadMore: (event) => _onLoadMore(event, emit),
        applyFilter: (event) => _onApplyFilter(event, emit),
      );
    });
  }

  Future<void> _onGetByIngredients(
    _GetByIngredients event,
    Emitter<RecipeListState> emit,
  ) async {
    emit(
      state.copyWith
          .queryDto(ids: event.ingredientIds)
          .copyWith
          .queryStatus(status: QueryStatus.loading),
    );
    _resetFilters();

    try {
      final recipeDto = await _getRecipes();

      emit(
        state.copyWith
            .queryStatus(
              status: QueryStatus.success,
              canLoadMore: recipeDto.meta.canLoadMore,
            )
            .copyWith(
              recipes: recipeDto.data,
            ),
      );
    } catch (err) {
      emit(
        state.copyWith.queryStatus(
          status: QueryStatus.error,
          errorType: QueryErrorType.initial,
        ),
      );
    }
  }

  Future<void> _onGetAll(
    _GetAll event,
    Emitter<RecipeListState> emit,
  ) async {
    emit(state.copyWith.queryStatus(status: QueryStatus.loading));
    _resetFilters();

    try {
      final recipeDto = await _getRecipes();

      emit(
        state
            .copyWith(
              recipes: recipeDto.data,
            )
            .copyWith
            .queryStatus(
              status: QueryStatus.success,
              canLoadMore: recipeDto.meta.canLoadMore,
            ),
      );
    } catch (err) {
      emit(
        state.copyWith.queryStatus(
          status: QueryStatus.error,
          errorType: QueryErrorType.initial,
        ),
      );
    }
  }

  Future<void> _onRefresh(_Refresh event, Emitter<RecipeListState> emit) async {
    emit(
      state.copyWith.queryDto
          .pagination(page: 1)
          .copyWith
          .queryStatus(type: QueryType.refresh, status: QueryStatus.loading),
    );

    try {
      final recipeDto = await _getRecipes();

      emit(
        state.copyWith
            .queryStatus(
              canLoadMore: recipeDto.meta.canLoadMore,
              status: QueryStatus.success,
            )
            .copyWith(
              recipes: recipeDto.data,
            ),
      );
    } catch (err) {
      emit(
        state.copyWith.queryStatus(
          status: QueryStatus.error,
          errorType: QueryErrorType.refresh,
        ),
      );
    }
  }

  Future<void> _onLoadMore(
    _LoadMore event,
    Emitter<RecipeListState> emit,
  ) async {
    emit(
      state.copyWith.queryDto
          .pagination(page: state.queryDto.pagination.page + 1)
          .copyWith
          .queryStatus(type: QueryType.loadMore, status: QueryStatus.loading),
    );

    try {
      final recipeDto = await _getRecipes();

      emit(
        state
            .copyWith(
              recipes: [
                ...state.recipes!,
                ...recipeDto.data,
              ],
            )
            .copyWith
            .queryStatus(
              canLoadMore: recipeDto.meta.canLoadMore,
              status: QueryStatus.success,
            ),
      );
    } catch (err) {
      emit(
        state.copyWith.queryStatus(
          status: QueryStatus.error,
          errorType: QueryErrorType.loadMore,
        ),
      );
    }
  }

  Future<void> _onApplyFilter(
    _ApplyFilter event,
    Emitter<RecipeListState> emit,
  ) async {
    emit(
      state.copyWith.queryDto
          .pagination(page: 1, filter: event.filters)
          .copyWith
          .queryStatus(status: QueryStatus.loading),
    );

    try {
      final recipeDto = await _getRecipes();

      emit(
        state
            .copyWith(
              recipes: recipeDto.data,
            )
            .copyWith
            .queryStatus(
              status: QueryStatus.success,
              canLoadMore: recipeDto.meta.canLoadMore,
            ),
      );
    } catch (err) {
      emit(
        state.copyWith.queryStatus(
          status: QueryStatus.error,
          errorType: QueryErrorType.initial,
        ),
      );
    }
  }

  Future<GetRecipeResultDTO> _getRecipes() async {
    final query = state.queryDto;

    final recipes = await _recipeRepository.getRecipes(query);

    return recipes;
  }

  void _resetFilters() {
    _recipeFilterBloc.add(const RecipeFilterEvent.reset());
  }
}
