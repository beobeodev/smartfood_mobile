part of 'add_practice_cubit.dart';

@freezed
class AddPracticeState with _$AddPracticeState {
  const factory AddPracticeState.initial() = _Initial;
  const factory AddPracticeState.loading() = _Loading;
  const factory AddPracticeState.success({required DiaryModel diary}) =
      _Success;
  const factory AddPracticeState.error() = _Error;
}
