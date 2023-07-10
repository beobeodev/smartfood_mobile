import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/common/enums/query_error_type.enum.dart';
import 'package:smarthealthy/common/enums/query_status.enum.dart';
import 'package:smarthealthy/common/enums/query_type.enum.dart';
import 'package:smarthealthy/data/dtos/get_meals.dto.dart';
import 'package:smarthealthy/data/dtos/pagination/pagination_query.dto.dart';
import 'package:smarthealthy/data/dtos/query_data_info.dto.dart';
import 'package:smarthealthy/data/dtos/query_meals.dto.dart';
import 'package:smarthealthy/data/dtos/recipe_filter.dto.dart';
import 'package:smarthealthy/data/models/meal.model.dart';
import 'package:smarthealthy/data/repositories/recipe.repository.dart';

part 'search_meal_state.dart';
part 'search_meal_cubit.freezed.dart';

class SearchMealCubit extends Cubit<SearchMealState> {
  final RecipeRepository _recipeRepository;

  SearchMealCubit({
    required RecipeRepository recipeRepository,
  })  : _recipeRepository = recipeRepository,
        super(
          const SearchMealState(
            info: QueryDataInfo(
              status: QueryStatus.loading,
            ),
            dto: QueryMealsDTO(
              pagination: PaginationQueryDTO<RecipeFilterDTO>(limit: 20),
            ),
          ),
        );

  Future<void> getAll({String? searchKey}) async {
    emit(
      state.copyWith
          .info(status: QueryStatus.loading, type: QueryType.initial)
          .copyWith
          .dto
          .pagination(search: searchKey, page: 1),
    );

    try {
      final recipeDto = await _getMeals();

      emit(
        state
            .copyWith(
              meals: recipeDto.data,
            )
            .copyWith
            .info(
              status: QueryStatus.success,
              canLoadMore: recipeDto.meta.canLoadMore,
            ),
      );
    } catch (err) {
      emit(
        state.copyWith.info(
          status: QueryStatus.error,
          errorType: QueryErrorType.initial,
        ),
      );
    }
  }

  Future<void> loadMore() async {
    emit(
      state.copyWith.dto
          .pagination(page: state.dto.pagination.page + 1)
          .copyWith
          .info(type: QueryType.loadMore, status: QueryStatus.loading),
    );

    try {
      final recipeDto = await _getMeals();

      emit(
        state
            .copyWith(
              meals: [
                ...state.meals,
                ...recipeDto.data,
              ],
            )
            .copyWith
            .info(
              canLoadMore: recipeDto.meta.canLoadMore,
              status: QueryStatus.success,
            ),
      );
    } catch (err) {
      emit(
        state.copyWith.info(
          status: QueryStatus.error,
          errorType: QueryErrorType.loadMore,
        ),
      );
    }
  }

  Future<GetMealsDTO> _getMeals() async {
    final query = state.dto;

    final meals = await _recipeRepository.getMeals(query);

    return meals;
  }
}
