import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dish_detail.event.dart';
part 'dish_detail.state.dart';
part 'dish_detail.bloc.freezed.dart';

class DishDetailBloc extends Bloc<DishDetailEvent, DishDetailState> {
  DishDetailBloc() : super(const DishDetailState.initial()) {
    on<DishDetailEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
