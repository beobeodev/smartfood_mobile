import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal_detail.event.dart';
part 'meal_detail.state.dart';
part 'meal_detail.bloc.freezed.dart';

class MealDetailBloc extends Bloc<MealDetailEvent, MealDetailState> {
  MealDetailBloc() : super(const MealDetailState.initial()) {
    on<MealDetailEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
