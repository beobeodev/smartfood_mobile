import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/common/helpers/nutrition_calculator.dart';
import 'package:smarthealthy/presentation/diary/ui_models/body_info_wrapper.dart';
import 'package:smarthealthy/presentation/diary/ui_models/nutrition_wrapper.dart';

part 'calorie_measure.event.dart';
part 'calorie_measure.state.dart';
part 'calorie_measure.bloc.freezed.dart';

class CalorieMeasureBloc
    extends Bloc<CalorieMeasureEvent, CalorieMeasureState> {
  CalorieMeasureBloc() : super(const CalorieMeasureState.initial()) {
    on<CalorieMeasureEvent>((event, emit) {
      event.map(
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
      emit(
        CalorieMeasureState.success(
          NutritionCalculator.calculate(event.bodyInfo),
        ),
      );
    } catch (e) {
      emit(const CalorieMeasureState.failure());
    }
  }
}
