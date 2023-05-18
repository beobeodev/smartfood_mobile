import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartfood/data/dtos/get_ingredient.dto.dart';
import 'package:smartfood/data/dtos/pagination/pagination_query.dto.dart';
import 'package:smartfood/data/models/ingredient.model.dart';
import 'package:smartfood/data/repositories/ingredient.repository.dart';

part 'search_ingredient.event.dart';
part 'search_ingredient.state.dart';
part 'search_ingredient.bloc.freezed.dart';

class SearchIngredientBloc
    extends Bloc<SearchIngredientEvent, SearchIngredientState> {
  final IngredientRepository _ingredientRepository;

  SearchIngredientBloc({required IngredientRepository ingredientRepository})
      : _ingredientRepository = ingredientRepository,
        super(
          const SearchIngredientState.loading(query: PaginationQueryDTO()),
        ) {
    on<SearchIngredientEvent>((events, emit) async {
      await events.map(get: (started) => _onGet(started, emit));
    });
    add(const _Get(query: PaginationQueryDTO()));
  }

  Future<void> _onGet(
    _Get event,
    Emitter<SearchIngredientState> emit,
  ) async {
    emit(_Loading(isLoadMore: event.isLoadMore, query: event.query));

    try {
      final GetIngredientDTO getIngredientDTO =
          await _ingredientRepository.getIngredients(event.query);

      emit(
        _Success(
          ingredients: getIngredientDTO.content,
          isLoadMore: event.isLoadMore,
          canLoadMore: getIngredientDTO.meta.canLoadMore,
          query: event.query,
        ),
      );
    } catch (_) {
      emit(_Failure(isLoadMore: event.isLoadMore, query: event.query));
    }
  }
}
