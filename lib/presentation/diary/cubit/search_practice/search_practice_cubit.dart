import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/common/enums/query_error_type.enum.dart';
import 'package:smarthealthy/common/enums/query_status.enum.dart';
import 'package:smarthealthy/common/enums/query_type.enum.dart';
import 'package:smarthealthy/data/dtos/get_practice_result.dto.dart';
import 'package:smarthealthy/data/dtos/pagination/pagination_query.dto.dart';
import 'package:smarthealthy/data/dtos/query_data_info.dto.dart';
import 'package:smarthealthy/data/models/practice.model.dart';
import 'package:smarthealthy/data/repositories/practice.repository.dart';

part 'search_practice_state.dart';
part 'search_practice_cubit.freezed.dart';

class SearchPracticeCubit extends Cubit<SearchPracticeState> {
  final PracticeRepository _practiceRepository;

  SearchPracticeCubit({required PracticeRepository practiceRepository})
      : _practiceRepository = practiceRepository,
        super(
          const SearchPracticeState(
            dto: PaginationQueryDTO(limit: 20),
            info: QueryDataInfo(status: QueryStatus.loading),
          ),
        );
  Future<void> getAll({String? searchKey}) async {
    emit(
      SearchPracticeState(
        dto: PaginationQueryDTO(limit: 20, search: searchKey),
        info: const QueryDataInfo(status: QueryStatus.loading),
      ),
    );

    try {
      final recipeDto = await _getPractices();

      emit(
        state
            .copyWith(
              practices: recipeDto.data,
            )
            .copyWith
            .info(
              status: QueryStatus.success,
              canLoadMore: recipeDto.meta.canLoadMore,
            ),
      );
    } catch (err) {
      emit(
        state.copyWith.info(
          status: QueryStatus.error,
          errorType: QueryErrorType.initial,
        ),
      );
    }
  }

  Future<void> loadMore() async {
    emit(
      state.copyWith
          .dto(page: state.dto.page + 1)
          .copyWith
          .info(type: QueryType.loadMore, status: QueryStatus.loading),
    );

    try {
      final recipeDto = await _getPractices();

      emit(
        state
            .copyWith(
              practices: [
                ...state.practices,
                ...recipeDto.data,
              ],
            )
            .copyWith
            .info(
              canLoadMore: recipeDto.meta.canLoadMore,
              status: QueryStatus.success,
            ),
      );
    } catch (err) {
      emit(
        state.copyWith.info(
          status: QueryStatus.error,
          errorType: QueryErrorType.loadMore,
        ),
      );
    }
  }

  Future<GetPracticeResultDTO> _getPractices() async {
    final query = state.dto;

    final meals = await _practiceRepository.get(query);

    return meals;
  }
}
