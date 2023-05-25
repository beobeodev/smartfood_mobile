import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_detail.event.dart';
part 'recipe_detail.state.dart';
part 'recipe_detail.bloc.freezed.dart';

class RecipeDetailBloc extends Bloc<RecipeDetailEvent, RecipeDetailState> {
  RecipeDetailBloc() : super(const RecipeDetailState.initial()) {
    on<RecipeDetailEvent>((events, emit) {});
  }
}
