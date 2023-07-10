part of 'search_practice_cubit.dart';

@freezed
class SearchPracticeState with _$SearchPracticeState {
  const factory SearchPracticeState({
    required QueryDataInfo info,
    @Default([]) List<PracticeModel> practices,
    required PaginationQueryDTO dto,
  }) = _SearchPracticeState;
}
