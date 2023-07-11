import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/data/repositories/practice.repository.dart';

part 'delete_practice_state.dart';
part 'delete_practice_cubit.freezed.dart';

class DeletePracticeCubit extends Cubit<DeletePracticeState> {
  final PracticeRepository _practiceRepository;

  DeletePracticeCubit({required PracticeRepository practiceRepository})
      : _practiceRepository = practiceRepository,
        super(const DeletePracticeState.initial());

  Future<void> submit(String id) async {
    emit(const _Loading());

    try {
      await _practiceRepository.delete(id);

      emit(_Success(id));
    } catch (err) {
      emit(const _Error());
    }
  }
}
