import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register.event.dart';
part 'register.state.dart';
part 'register.bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(const RegisterState.initial()) {
    on<RegisterEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
