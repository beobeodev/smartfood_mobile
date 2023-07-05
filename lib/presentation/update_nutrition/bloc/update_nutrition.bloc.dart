import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/common/helpers/nutrition_calculator.dart';
import 'package:smarthealthy/data/dtos/user_nutrition.dto.dart';
import 'package:smarthealthy/data/models/user.model.dart';
import 'package:smarthealthy/data/repositories/user.repository.dart';
import 'package:smarthealthy/presentation/diary/ui_models/nutrition_wrapper.dart';

part 'update_nutrition.event.dart';
part 'update_nutrition.state.dart';
part 'update_nutrition.bloc.freezed.dart';

class UpdateNutritionBloc
    extends Bloc<UpdateNutritionEvent, UpdateNutritionState> {
  final UserRepository _userRepository;

  UpdateNutritionBloc({required UserRepository userRepository})
      : _userRepository = userRepository,
        super(const UpdateNutritionState.initial()) {
    on<UpdateNutritionEvent>((event, emit) async {
      await event.map(
        calculateNutrition: (calculateNutrition) =>
            _onCalculateNutrition(event, emit),
      );
    });
  }

  Future<void> _onCalculateNutrition(
    UpdateNutritionEvent event,
    Emitter<UpdateNutritionState> emit,
  ) async {
    emit(const UpdateNutritionState.loading());

    try {
      final newUser =
          await _userRepository.updateNutrition(event.userNutrition);

      emit(
        UpdateNutritionState.success(
          newUser,
          NutritionCalculator.calculate(event.userNutrition),
        ),
      );
    } catch (e) {
      emit(const UpdateNutritionState.failure());
    }
  }
}
