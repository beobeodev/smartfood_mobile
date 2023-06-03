import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/common/constants/enums/query_status.enum.dart';
import 'package:smarthealthy/data/models/category.model.dart';
import 'package:smarthealthy/data/models/cuisine.model.dart';
import 'package:smarthealthy/data/models/level.model.dart';
import 'package:smarthealthy/data/repositories/category.repository.dart';
import 'package:smarthealthy/data/repositories/cuisine.repository.dart';
import 'package:smarthealthy/data/repositories/level.repository.dart';

part 'recipe_filter.event.dart';
part 'recipe_filter.state.dart';
part 'recipe_filter.bloc.freezed.dart';

class RecipeFilterBloc extends Bloc<RecipeFilterEvent, RecipeFilterState> {
  final CategoryRepository _categoryRepository;
  final CuisineRepository _cuisineRepository;
  final LevelRepository _levelRepository;

  RecipeFilterBloc({
    required CategoryRepository categoryRepository,
    required CuisineRepository cuisineRepository,
    required LevelRepository levelRepository,
  })  : _categoryRepository = categoryRepository,
        _cuisineRepository = cuisineRepository,
        _levelRepository = levelRepository,
        super(const RecipeFilterState()) {
    on<RecipeFilterEvent>((event, emit) async {
      await event.map(
        started: (start) => _onStarted(start, emit),
        reset: (reset) async => _onReset(reset, emit),
        toggleCategory: (event) async => _onToggleCategory(event, emit),
        toggleCuisine: (event) async => _onToggleCuisine(event, emit),
        toggleLevel: (event) async => _onToggleLevel(event, emit),
      );
    });
  }

  Future<void> _onStarted(
    _Started event,
    Emitter<RecipeFilterState> emit,
  ) async {
    emit(state.copyWith(status: QueryStatus.loading));

    try {
      final [
        categories as List<CategoryModel>,
        cuisines as List<CuisineModel>,
        levels as List<LevelModel>
      ] = await Future.wait([
        _categoryRepository.getCategories(),
        _cuisineRepository.getCuisines(),
        _levelRepository.getLevels()
      ]);

      emit(
        state.copyWith(
          categories: categories,
          cuisines: cuisines,
          levels: levels,
          status: QueryStatus.success,
        ),
      );
    } catch (err) {
      emit(state.copyWith(status: QueryStatus.error));
    }
  }

  void _onReset(_Reset event, Emitter<RecipeFilterState> emit) {
    final categories =
        state.categories.map((e) => e.copyWith(isChosen: false)).toList();
    final levels =
        state.levels.map((e) => e.copyWith(isChosen: false)).toList();
    final cuisines =
        state.cuisines.map((e) => e.copyWith(isChosen: false)).toList();

    emit(
      state.copyWith(
        categories: categories,
        levels: levels,
        cuisines: cuisines,
      ),
    );
  }

  void _onToggleCategory(
    _ToggleCategory event,
    Emitter<RecipeFilterState> emit,
  ) {
    final categories = state.categories.map((e) => e.copyWith()).toList();
    categories[event.index].isChosen = event.isSelected;

    emit(
      state.copyWith(categories: categories),
    );
  }

  void _onToggleLevel(
    _ToggleLevel event,
    Emitter<RecipeFilterState> emit,
  ) {
    final levels = state.levels.map((e) => e.copyWith()).toList();
    levels[event.index].isChosen = event.isSelected;

    emit(state.copyWith(levels: levels));
  }

  void _onToggleCuisine(
    _ToggleCuisine event,
    Emitter<RecipeFilterState> emit,
  ) {
    final cuisines = state.cuisines.map((e) => e.copyWith()).toList();
    cuisines[event.index].isChosen = event.isSelected;

    emit(state.copyWith(cuisines: cuisines));
  }
}
