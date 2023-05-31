import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/common/constants/enums/query_error_type.enum.dart';
import 'package:smarthealthy/common/constants/enums/query_status.enum.dart';
import 'package:smarthealthy/common/constants/enums/query_type.enum.dart';
import 'package:smarthealthy/data/dtos/get_recipes.dto.dart';
import 'package:smarthealthy/data/dtos/pagination/pagination_query.dto.dart';
import 'package:smarthealthy/data/dtos/query_data_status.dto.dart';
import 'package:smarthealthy/data/dtos/query_recipes.dto.dart';
import 'package:smarthealthy/data/models/recipe.model.dart';
import 'package:smarthealthy/data/repositories/recipe.repository.dart';

part 'recipe_list.event.dart';
part 'recipe_list.state.dart';
part 'recipe_list.bloc.freezed.dart';

class RecipeListBloc extends Bloc<RecipeListEvent, RecipeListState> {
  final RecipeRepository _recipeRepository;

  RecipeListBloc({required RecipeRepository recipeRepository})
      : _recipeRepository = recipeRepository,
        super(
          const RecipeListState(
            queryStatus: QueryDataStatusDTO(
              status: QueryStatus.loading,
            ),
            queryDto:
                QueryRecipesDTO(pagination: PaginationQueryDTO(limit: 20)),
          ),
        ) {
    on<RecipeListEvent>((event, emit) async {
      await event.map(
        getByIngredients: (event) => _onGetByIngredients(event, emit),
        getAll: (event) => _onGetAll(event, emit),
        refresh: (event) => _onRefresh(event, emit),
        loadMore: (event) => _onLoadMore(event, emit),
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

    try {
      final recipeDto = await _getRecipes();

      emit(
        state.copyWith.queryStatus(status: QueryStatus.success).copyWith(
              recipes: recipeDto.data,
            ),
      );
    } catch (err) {
      log(err.toString());

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

  Future<void> _onGetAll(
    _GetAll event,
    Emitter<RecipeListState> emit,
  ) async {
    emit(state.copyWith.queryStatus(status: QueryStatus.loading));

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

  Future<GetRecipesDTO> _getRecipes() async {
    final query = state.queryDto;
    final recipes = await _recipeRepository.getRecipes(query);

    return recipes;
  }
}
