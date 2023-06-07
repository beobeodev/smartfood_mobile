import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'diary.event.dart';
part 'diary.state.dart';
part 'diary.bloc.freezed.dart';

class DiaryBloc extends Bloc<DiaryEvent, DiaryState> {
  DiaryBloc() : super(const DiaryState.initial()) {
    on<DiaryEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
