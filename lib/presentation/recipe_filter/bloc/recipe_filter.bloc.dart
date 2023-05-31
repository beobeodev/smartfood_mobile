import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
      await event.map(started: (start) => _onStarted(start, emit));
    });
  }

  Future<void> _onStarted(
    _Started event,
    Emitter<RecipeFilterState> emit,
  ) async {
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
      ),
    );
  }
}
