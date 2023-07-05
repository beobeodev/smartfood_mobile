import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/common/enums/query_status.enum.dart';
import 'package:smarthealthy/data/dtos/submit_recipe_rating.dto.dart';
import 'package:smarthealthy/data/repositories/recipe.repository.dart';

part 'recipe_rating.event.dart';
part 'recipe_rating.state.dart';
part 'recipe_rating.bloc.freezed.dart';

class RecipeRatingBloc extends Bloc<RecipeRatingEvent, RecipeRatingState> {
  final RecipeRepository _recipeRepository;

  RecipeRatingBloc({required RecipeRepository recipeRepository})
      : _recipeRepository = recipeRepository,
        super(const RecipeRatingState()) {
    on<RecipeRatingEvent>((event, emit) async {
      await event.map(submit: (submit) => _onSubmit(submit, emit));
    });
  }

  Future<void> _onSubmit(_Submit event, Emitter<RecipeRatingState> emit) async {
    emit(state.copyWith(status: QueryStatus.loading));
    try {
      await _recipeRepository.sendRating(event.dto);

      emit(
        state.copyWith(status: QueryStatus.success, rating: event.dto.value),
      );
    } catch (err) {
      emit(state.copyWith(status: QueryStatus.error));
    }
  }
}
