import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/data/models/practice.model.dart';

part 'add_practice_state.dart';
part 'add_practice_cubit.freezed.dart';

class AddPracticeCubit extends Cubit<AddPracticeState> {
  AddPracticeCubit() : super(const AddPracticeState.initial());

  Future<void> add() async {
    emit(const _Loading());

    await Future.delayed(const Duration(seconds: 1));

    emit(_Success(practice: PracticeModel(name: 'name')));
  }
}
