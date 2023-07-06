import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/common/enums/meal_type.enum.dart';
import 'package:smarthealthy/data/repositories/meal.repository.dart';

part 'delete_meal.event.dart';
part 'delete_meal.state.dart';
part 'delete_meal.bloc.freezed.dart';

class DeleteMealBloc extends Bloc<DeleteMealEvent, DeleteMealState> {
  final MealRepository _mealRepository;

  DeleteMealBloc({required MealRepository mealRepository})
      : _mealRepository = mealRepository,
        super(const DeleteMealState.initial()) {
    on<DeleteMealEvent>((event, emit) async {
      await event.map(submit: (submit) => _onSubmit(submit, emit));
    });
  }

  Future<void> _onSubmit(_Submit event, Emitter<DeleteMealState> emit) async {
    emit(const DeleteMealState.loading());
    try {
      await _mealRepository.deleteMeal(event.mealId);

      emit(DeleteMealState.success(event.mealId, event.type));
    } catch (err) {
      emit(const DeleteMealState.error());
    }
  }
}
