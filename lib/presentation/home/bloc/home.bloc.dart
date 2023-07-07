import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/common/enums/query_error_type.enum.dart';
import 'package:smarthealthy/common/enums/query_status.enum.dart';
import 'package:smarthealthy/common/enums/query_type.enum.dart';
import 'package:smarthealthy/data/dtos/pagination/pagination_query.dto.dart';
import 'package:smarthealthy/data/dtos/query_data_info.dto.dart';
import 'package:smarthealthy/data/dtos/query_recipes.dto.dart';
import 'package:smarthealthy/data/models/recipe.model.dart';
import 'package:smarthealthy/data/repositories/recipe.repository.dart';

part 'home.event.dart';
part 'home.state.dart';
part 'home.bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final RecipeRepository _recipeRepository;

  HomeBloc({required RecipeRepository recipeRepository})
      : _recipeRepository = recipeRepository,
        super(
          const HomeState(
            queryInfo: QueryDataInfo(status: QueryStatus.loading),
          ),
        ) {
    on<HomeEvent>((event, emit) async {
      await event.map(
        getRecommendedRecipes: (getRecommendedEvent) =>
            _onGetRecommendedRecipes(getRecommendedEvent, emit),
        getTenRecipes: (getTenRecipes) => _onGetTenRecipes(getTenRecipes, emit),
        refresh: (refresh) => _onRefresh(refresh, emit),
      );
    });
  }

  Future<void> _onGetRecommendedRecipes(
    _GetRecommendedRecipes event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      const _HomeState(
        queryInfo: QueryDataInfo(
          status: QueryStatus.loading,
        ),
        recipeType: RecipeType.recommended,
      ),
    );

    try {
      emit(
        state.copyWith
            .queryInfo(
              status: QueryStatus.success,
            )
            .copyWith(
              recipes: await _getRecipes(),
            ),
      );
    } catch (err) {
      emit(state.copyWith.queryInfo(status: QueryStatus.error));
    }
  }

  Future<void> _onGetTenRecipes(
    _GetTenRecipes event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      const _HomeState(
        queryInfo: QueryDataInfo(
          status: QueryStatus.loading,
        ),
      ),
    );

    try {
      emit(
        state.copyWith
            .queryInfo(
              status: QueryStatus.success,
            )
            .copyWith(
              recipes: await _getRecipes(),
            ),
      );
    } catch (err) {
      emit(state.copyWith.queryInfo(status: QueryStatus.error));
    }
  }

  Future<void> _onRefresh(_Refresh event, Emitter<HomeState> emit) async {
    emit(
      state.copyWith
          .queryInfo(status: QueryStatus.loading, type: QueryType.refresh),
    );

    try {
      emit(
        state.copyWith
            .queryInfo(status: QueryStatus.success)
            .copyWith(recipes: await _getRecipes()),
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

  Future<List<RecipeModel>> _getRecipes() async {
    if (state.recipeType == RecipeType.normal) {
      final dto = await _recipeRepository.getRecipes(
        const QueryRecipesDTO(pagination: PaginationQueryDTO(limit: 10)),
      );

      return dto.data;
    }

    return await _recipeRepository.getRecommendedRecipes();
  }
}
