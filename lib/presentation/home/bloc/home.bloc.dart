import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/common/enums/query_status.enum.dart';
import 'package:smarthealthy/data/dtos/pagination/pagination_query.dto.dart';
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
        super(const HomeState()) {
    on<HomeEvent>((event, emit) async {
      await event.map(
        getRecommendedRecipes: (getRecommendedEvent) =>
            _onGetRecommendedRecipes(getRecommendedEvent, emit),
        getTenRecipes: (getTenRecipes) => _onGetTenRecipes(getTenRecipes, emit),
      );
    });
  }

  Future<void> _onGetRecommendedRecipes(
    _GetRecommendedRecipes event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(status: QueryStatus.loading));
    try {
      final recommendedRecipes =
          await _recipeRepository.getRecommendedRecipes();
      emit(
        state.copyWith(
          recommendedRecipes: recommendedRecipes,
          status: QueryStatus.success,
        ),
      );
    } catch (err) {
      emit(state.copyWith(status: QueryStatus.error));
    }
  }

  Future<void> _onGetTenRecipes(
    _GetTenRecipes event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(status: QueryStatus.loading));
    try {
      final tenRecipes = await _recipeRepository.getRecipes(
        const QueryRecipesDTO(pagination: PaginationQueryDTO(limit: 10)),
      );
      emit(
        state.copyWith(
          recommendedRecipes: tenRecipes.data,
          status: QueryStatus.success,
        ),
      );
    } catch (err) {
      emit(state.copyWith(status: QueryStatus.error));
    }
  }
}
