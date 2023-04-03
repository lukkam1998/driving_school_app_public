part of 'start_lesson_bloc.dart';

@freezed
class StartLessonState with _$StartLessonState {
  const factory StartLessonState({
    required bool isLoading,
    required bool didStart,
    required bool didEnd,
    required bool hasError,
    required String errorMessage,
    DateTime? startDate,
    DateTime? endDate,
  }) = _StartLessonState;

  factory StartLessonState.initial() => const StartLessonState(
        isLoading: false,
        didStart: false,
        didEnd: false,
        hasError: false,
        errorMessage: '',
      );
}
