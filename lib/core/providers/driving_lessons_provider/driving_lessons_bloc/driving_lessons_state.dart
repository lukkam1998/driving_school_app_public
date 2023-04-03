part of 'driving_lessons_bloc.dart';

@freezed
class DrivingLessonsState with _$DrivingLessonsState {
  const factory DrivingLessonsState({
    required bool isLoading,
    required bool isLessonLoading,
    required List<UserLesson> userLessons,
    required List<UserCourseData> userCourses,
    required bool hasError,
    required DateTime day,
  }) = _Initial;

  factory DrivingLessonsState.initial() => DrivingLessonsState(
        isLoading: false,
        userLessons: [],
        userCourses: [],
        isLessonLoading: false,
        hasError: false,
        day: DateTime.now(),
      );
}
