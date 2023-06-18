import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/data/models/ingredient.model.dart';

part 'ingredient_list.event.dart';
part 'ingredient_list.state.dart';
part 'ingredient_list.bloc.freezed.dart';

class IngredientListBloc
    extends Bloc<IngredientListEvent, IngredientListState> {
  IngredientListBloc() : super(const IngredientListState()) {
    on<IngredientListEvent>((event, emit) {
      event.map(
        updated: (event) => _onUpdated(event, emit),
      );
    });
  }

  void _onUpdated(
    _Updated event,
    Emitter<IngredientListState> emit,
  ) {
    final bool isExist =
        state.ingredients.any((element) => element.id == event.ingredient.id);

    final ingredients = List.of(state.ingredients);

    if (isExist) {
      ingredients.removeWhere((element) => element.id == event.ingredient.id);
      emit(state.copyWith(ingredients: ingredients));
    } else {
      ingredients.add(event.ingredient);
      emit(state.copyWith(ingredients: ingredients));
    }
  }
}
