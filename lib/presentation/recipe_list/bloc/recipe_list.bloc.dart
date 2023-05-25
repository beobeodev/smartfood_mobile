import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/data/models/recipe.model.dart';
import 'package:smarthealthy/data/repositories/recipe.repository.dart';

part 'recipe_list.event.dart';
part 'recipe_list.state.dart';
part 'recipe_list.bloc.freezed.dart';

class RecipeListBloc extends Bloc<RecipeListEvent, RecipeListState> {
  final RecipeRepository _recipeRepository;

  RecipeListBloc({required RecipeRepository recipeRepository})
      : _recipeRepository = recipeRepository,
        super(const RecipeListState.loading()) {
    on<RecipeListEvent>((event, emit) async {
      await event.map(get: (event) => _onStarted(event, emit));
    });
  }

  Future<void> _onStarted(_Get event, Emitter<RecipeListState> emit) async {
    emit(const RecipeListState.loading());
    try {
      final recipes =
          await _recipeRepository.getRecipeByIngredients(event.ingredientIds);

      emit(RecipeListState.success(recipes));
    } catch (err) {
      emit(const RecipeListState.failure());
    }
  }
}
