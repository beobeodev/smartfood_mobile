import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:smarthealthy/presentation/recipe_filter/recipe_filter.dart';

part 'root.event.dart';
part 'root.state.dart';

class RootBloc extends Bloc<RootEvent, RootState> {
  final RecipeFilterBloc _recipeFilterBloc;

  RootBloc({required RecipeFilterBloc recipeFilterBloc})
      : _recipeFilterBloc = recipeFilterBloc,
        super(const RootState()) {
    _recipeFilterBloc.add(const RecipeFilterEvent.started());
    on<RootBottomTabChange>(_onBottomTabChanged);
  }

  void _onBottomTabChanged(
    RootBottomTabChange event,
    Emitter<RootState> emit,
  ) {
    if (event.newIndex == state.currentIndex) return;

    emit(state.copyWith(currentIndex: event.newIndex));
  }
}
