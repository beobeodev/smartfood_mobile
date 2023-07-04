import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/common/helpers/nutrition_calculator.dart';
import 'package:smarthealthy/data/dtos/user_nutrition.dto.dart';
import 'package:smarthealthy/data/models/user.model.dart';
import 'package:smarthealthy/data/repositories/user.repository.dart';
import 'package:smarthealthy/presentation/diary/ui_models/nutrition_wrapper.dart';

part 'calorie_measure.event.dart';
part 'calorie_measure.state.dart';
part 'calorie_measure.bloc.freezed.dart';

class CalorieMeasureBloc
    extends Bloc<CalorieMeasureEvent, CalorieMeasureState> {
  final UserRepository _userRepository;

  CalorieMeasureBloc({required UserRepository userRepository})
      : _userRepository = userRepository,
        super(const CalorieMeasureState.initial()) {
    on<CalorieMeasureEvent>((event, emit) async {
      await event.map(
        calculateNutrition: (calculateNutrition) =>
            _onCalculateNutrition(event, emit),
      );
    });
  }

  Future<void> _onCalculateNutrition(
    CalorieMeasureEvent event,
    Emitter<CalorieMeasureState> emit,
  ) async {
    emit(const CalorieMeasureState.loading());

    try {
      final newUser =
          await _userRepository.updateNutrition(event.userNutrition);

      emit(
        CalorieMeasureState.success(
          newUser,
          NutritionCalculator.calculate(event.userNutrition),
        ),
      );
    } catch (e) {
      emit(const CalorieMeasureState.failure());
    }
  }
}
