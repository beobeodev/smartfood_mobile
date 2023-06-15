import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_meal.event.dart';
part 'add_meal.state.dart';
part 'add_meal.bloc.freezed.dart';

class AddMealBloc extends Bloc<AddMealEvent, AddMealState> {
  AddMealBloc() : super(const AddMealState.initial()) {
    on<AddMealEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
