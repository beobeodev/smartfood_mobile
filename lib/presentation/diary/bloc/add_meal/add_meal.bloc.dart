import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/data/dtos/add_meal.dto.dart';

part 'add_meal.event.dart';
part 'add_meal.state.dart';
part 'add_meal.bloc.freezed.dart';

class AddMealBloc extends Bloc<AddMealEvent, AddMealState> {
  AddMealBloc() : super(const AddMealState.initial()) {
    on<AddMealEvent>((event, emit) {
      event.map(add: (add) => _onAdd(add, emit));
    });
  }

  void _onAdd(_Add event, Emitter<AddMealState> emit) {
    emit(const AddMealState.loading());

    try {
      emit(AddMealState.success(event.addMealDTO));
    } catch (err) {
      emit(const AddMealState.failure());
    }
  }
}
