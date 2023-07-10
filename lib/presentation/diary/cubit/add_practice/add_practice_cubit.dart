import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/data/dtos/add_practice.dto.dart';
import 'package:smarthealthy/data/models/diary.model.dart';
import 'package:smarthealthy/data/repositories/practice.repository.dart';

part 'add_practice_state.dart';
part 'add_practice_cubit.freezed.dart';

class AddPracticeCubit extends Cubit<AddPracticeState> {
  final PracticeRepository _practiceRepository;

  AddPracticeCubit({required PracticeRepository practiceRepository})
      : _practiceRepository = practiceRepository,
        super(const AddPracticeState.initial());

  Future<void> add(AddPracticeDTO dto) async {
    emit(const _Loading());

    try {
      final newDiary = await _practiceRepository.add(dto);

      emit(_Success(diary: newDiary));
    } catch (err) {
      emit(const _Error());
    }
  }
}
