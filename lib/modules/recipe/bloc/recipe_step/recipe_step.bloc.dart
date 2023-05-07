import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartfood/data/models/step.model.dart';
import 'package:smartfood/data/repositories/recipe.repository.dart';

part 'recipe_step.event.dart';
part 'recipe_step.state.dart';
part 'recipe_step.bloc.freezed.dart';

class RecipeStepBloc extends Bloc<RecipeStepEvent, RecipeStepState> {
  final RecipeRepository _recipeRepository;

  RecipeStepBloc({required RecipeRepository recipeRepository})
      : _recipeRepository = recipeRepository,
        super(const RecipeStepState.initial()) {
    on<RecipeStepEvent>((events, emit) async {
      await events.map(started: (started) => _onStarted(started, emit));
    });
    add(const _Started());
  }

  Future<void> _onStarted(_Started event, Emitter<RecipeStepState> emit) async {
    try {
      emit(const _Loading());
      final steps = await _recipeRepository.getRecipeSteps();
      emit(_Success(steps));
    } catch (e) {
      emit(const _Failure());
    }
  }
}
