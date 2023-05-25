import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'favorite.event.dart';
part 'favorite.state.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  FavoriteBloc() : super(const FavoriteState()) {
    on<FavoriteEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
