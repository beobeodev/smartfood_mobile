import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/common/constants/enums/query_error_type.enum.dart';
import 'package:smarthealthy/common/constants/enums/query_status.enum.dart';
import 'package:smarthealthy/common/constants/enums/query_type.enum.dart';
import 'package:smarthealthy/data/dtos/get_recipes_result.dto.dart';
import 'package:smarthealthy/data/dtos/pagination/pagination_query.dto.dart';
import 'package:smarthealthy/data/dtos/query_data_info.dto.dart';
import 'package:smarthealthy/data/dtos/query_recipes.dto.dart';
import 'package:smarthealthy/data/dtos/recipe_filter.dto.dart';
import 'package:smarthealthy/data/models/ingredient.model.dart';
import 'package:smarthealthy/data/models/recipe.model.dart';
import 'package:smarthealthy/data/repositories/recipe.repository.dart';

part 'search_recipe.event.dart';
part 'search_recipe.state.dart';
part 'search_recipe.bloc.freezed.dart';

class SearchRecipeBloc extends Bloc<SearchRecipeEvent, SearchRecipeState> {
  final RecipeRepository _recipeRepository;

  SearchRecipeBloc({
    required RecipeRepository recipeRepository,
  })  : _recipeRepository = recipeRepository,
        super(
          const SearchRecipeState(
            queryInfo: QueryDataInfo(
              status: QueryStatus.loading,
            ),
            queryDto: QueryRecipesDTO(
              pagination: PaginationQueryDTO<RecipeFilterDTO>(limit: 20),
            ),
          ),
        ) {
    on<SearchRecipeEvent>((event, emit) async {
      await event.map(
        getByIngredients: (event) => _onGetByIngredients(event, emit),
        getAll: (event) => _onGetAll(event, emit),
        refresh: (event) => _onRefresh(event, emit),
        loadMore: (event) => _onLoadMore(event, emit),
        addIngredient: (event) async => _onAddIngredient(event, emit),
        applyFilters: (event) => _onApplyFilters(event, emit),
      );
    });
  }

  Future<void> _onGetByIngredients(
    _GetByIngredients event,
    Emitter<SearchRecipeState> emit,
  ) async {
    emit(
      state.copyWith
          .queryDto(ingredients: event.ingredients)
          .copyWith
          .queryInfo(status: QueryStatus.loading, type: QueryType.initial),
    );

    try {
      final recipeDto = await _getRecipes();

      emit(
        state.copyWith
            .queryInfo(
              status: QueryStatus.success,
              canLoadMore: recipeDto.meta.canLoadMore,
            )
            .copyWith(
              recipes: recipeDto.data,
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

  Future<void> _onGetAll(
    _GetAll event,
    Emitter<SearchRecipeState> emit,
  ) async {
    emit(
      state.copyWith
          .queryInfo(status: QueryStatus.loading, type: QueryType.initial)
          .copyWith
          .queryDto
          .pagination(search: event.searchKey, page: 1),
    );

    try {
      final recipeDto = await _getRecipes();

      emit(
        state
            .copyWith(
              recipes: recipeDto.data,
            )
            .copyWith
            .queryInfo(
              status: QueryStatus.success,
              canLoadMore: recipeDto.meta.canLoadMore,
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

  Future<void> _onRefresh(
    _Refresh event,
    Emitter<SearchRecipeState> emit,
  ) async {
    emit(
      state.copyWith.queryDto
          .pagination(page: 1)
          .copyWith
          .queryInfo(type: QueryType.refresh, status: QueryStatus.loading),
    );

    try {
      final recipeDto = await _getRecipes();

      emit(
        state.copyWith
            .queryInfo(
              canLoadMore: recipeDto.meta.canLoadMore,
              status: QueryStatus.success,
            )
            .copyWith(
              recipes: recipeDto.data,
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

  Future<void> _onLoadMore(
    _LoadMore event,
    Emitter<SearchRecipeState> emit,
  ) async {
    emit(
      state.copyWith.queryDto
          .pagination(page: state.queryDto.pagination.page + 1)
          .copyWith
          .queryInfo(type: QueryType.loadMore, status: QueryStatus.loading),
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
            .queryInfo(
              canLoadMore: recipeDto.meta.canLoadMore,
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

  Future<void> _onApplyFilters(
    _ApplyFilters event,
    Emitter<SearchRecipeState> emit,
  ) async {
    emit(
      state.copyWith.queryDto
          .pagination(page: 1, filter: event.filters)
          .copyWith
          .queryInfo(status: QueryStatus.loading),
    );

    try {
      final recipeDto = await _getRecipes();

      emit(
        state
            .copyWith(
              recipes: recipeDto.data,
            )
            .copyWith
            .queryInfo(
              status: QueryStatus.success,
              canLoadMore: recipeDto.meta.canLoadMore,
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

  void _onAddIngredient(_AddIngredient event, Emitter<SearchRecipeState> emit) {
    emit(
      state.copyWith.queryDto(
        ingredients: [
          if (state.queryDto.ingredients != null)
            ...state.queryDto.ingredients!,
          event.ingredient
        ],
      ),
    );
  }

  Future<GetRecipeResultDTO> _getRecipes() async {
    final query = state.queryDto;

    final recipes = await _recipeRepository.getRecipes(query);

    return recipes;
  }
}
