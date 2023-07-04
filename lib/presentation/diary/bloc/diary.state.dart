part of 'diary.bloc.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class DiaryState with _$DiaryState {
  const DiaryState._();

  const factory DiaryState({
    @Default(QueryStatus.loading) QueryStatus status,
    @Default([]) List<DiaryModel> diaries,
    required DateTime currentDate,
  }) = _DiaryState;

  DiaryModel? get currentDiary => diaries
      .firstWhereOrNull((element) => element.date.isSameDateWith(currentDate));
}
