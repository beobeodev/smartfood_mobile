import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/common/enums/meal_type.enum.dart';
import 'package:smarthealthy/data/dtos/add_meal.dto.dart';
import 'package:smarthealthy/data/models/meal.model.dart';
import 'package:smarthealthy/data/repositories/meal.repository.dart';

part 'add_meal.event.dart';
part 'add_meal.state.dart';
part 'add_meal.bloc.freezed.dart';

class AddMealBloc extends Bloc<AddMealEvent, AddMealState> {
  final MealRepository _mealRepository;

  AddMealBloc({required MealRepository mealRepository})
      : _mealRepository = mealRepository,
        super(const AddMealState.initial()) {
    on<AddMealEvent>((event, emit) async {
      await event.map(add: (add) => _onAdd(add, emit));
    });
  }

  Future<void> _onAdd(_Add event, Emitter<AddMealState> emit) async {
    emit(const AddMealState.loading());

    try {
      final newMeals = await _mealRepository.addMeal(event.addMealDTO);

      emit(AddMealState.success(newMeals, event.addMealDTO.typeOfMeal));
    } catch (err) {
      log(err.toString());

      emit(const AddMealState.failure());
    }
  }
}
