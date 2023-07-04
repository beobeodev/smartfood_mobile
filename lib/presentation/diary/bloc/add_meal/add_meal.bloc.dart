import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/common/enums/meal_type.enum.dart';
import 'package:smarthealthy/data/dtos/add_meal.dto.dart';
import 'package:smarthealthy/data/models/meal.model.dart';
import 'package:smarthealthy/data/repositories/diary.repository.dart';

part 'add_meal.event.dart';
part 'add_meal.state.dart';
part 'add_meal.bloc.freezed.dart';

class AddMealBloc extends Bloc<AddMealEvent, AddMealState> {
  final DiaryRepository _diaryRepository;

  AddMealBloc({required DiaryRepository diaryRepository})
      : _diaryRepository = diaryRepository,
        super(const AddMealState.initial()) {
    on<AddMealEvent>((event, emit) {
      event.map(add: (add) => _onAdd(add, emit));
    });
  }

  Future<void> _onAdd(_Add event, Emitter<AddMealState> emit) async {
    emit(const AddMealState.loading());

    try {
      final newMeal = await _diaryRepository.addMeal(event.addMealDTO);

      emit(AddMealState.success(newMeal, event.addMealDTO.typeOfMeal));
    } catch (err) {
      emit(const AddMealState.failure());
    }
  }
}
