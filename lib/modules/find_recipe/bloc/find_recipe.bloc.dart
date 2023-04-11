import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'find_recipe.event.dart';
part 'find_recipe.state.dart';

class FindRecipeBloc extends Bloc<FindRecipeEvent, FindRecipeState> {
  FindRecipeBloc() : super(const FindRecipeState()) {
    on<FindRecipeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
