import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/data/models/recipe.model.dart';
import 'package:smarthealthy/data/repositories/recipe.repository.dart';

part 'recipe_detail.event.dart';
part 'recipe_detail.state.dart';
part 'recipe_detail.bloc.freezed.dart';

class RecipeDetailBloc extends Bloc<RecipeDetailEvent, RecipeDetailState> {
  final RecipeRepository _recipeRepository;

  RecipeDetailBloc({required RecipeRepository recipeRepository})
      : _recipeRepository = recipeRepository,
        super(const RecipeDetailState.loading()) {
    on<RecipeDetailEvent>((events, emit) async {
      await events.map(started: (started) => _onStarted(started, emit));
    });
  }

  Future<void> _onStarted(
    _Started event,
    Emitter<RecipeDetailState> emit,
  ) async {
    emit(const _Loading());

    try {
      final recipe = await _recipeRepository.getRecipeDetail(event.id);

      emit(_Success(recipe: recipe));
    } catch (err) {
      emit(const _Failure());
    }
  }
}
