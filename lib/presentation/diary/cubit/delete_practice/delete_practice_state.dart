part of 'delete_practice_cubit.dart';

@freezed
class DeletePracticeState with _$DeletePracticeState {
  const factory DeletePracticeState.initial() = _Initial;
  const factory DeletePracticeState.loading() = _Loading;
  const factory DeletePracticeState.success(String practiceId) = _Success;
  const factory DeletePracticeState.error() = _Error;
}
