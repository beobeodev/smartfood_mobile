import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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

  NutritionWrapper _calculateNutrition(BodyInfoWrapper bodyInfo) {
    final double bmr;

    if (bodyInfo.gender) {
      bmr = (13.397 * bodyInfo.weight) +
          (4.799 * bodyInfo.height) -
          (5.677 * bodyInfo.age) +
          88.362;
    } else {
      bmr = (9.247 * bodyInfo.weight) +
          (3.098 * bodyInfo.height) -
          (4.330 * bodyInfo.age) +
          447.593;
    }

    return NutritionWrapper(
      calorie: (bmr * bodyInfo.practiceIndex).round(),
      carbs: 188,
      fat: 96,
      protein: 116,
    );
  }

  Future<void> _onCalculateNutrition(
    CalorieMeasureEvent event,
    Emitter<CalorieMeasureState> emit,
  ) async {
    emit(const CalorieMeasureState.loading());
    try {
      emit(
        CalorieMeasureState.success(
          _calculateNutrition(event.bodyInfo),
        ),
      );
    } catch (e) {
      emit(const CalorieMeasureState.failure());
    }
  }
}
