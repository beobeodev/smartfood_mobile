import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/common/enums/query_status.enum.dart';
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
            _getRecommendedRecipes(getRecommendedEvent, emit),
      );
    });
  }

  Future<void> _getRecommendedRecipes(
    _GetRecommendedRecipes event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(status: QueryStatus.loading));
    try {
      final recommendedRecipes =
          await _recipeRepository.getRecommendedRecipes();
      emit(state.copyWith(
          recommendedRecipes: recommendedRecipes, status: QueryStatus.success));
    } catch (err) {
      emit(state.copyWith(status: QueryStatus.error));
    }
  }
}
