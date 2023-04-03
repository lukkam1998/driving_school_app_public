part of 'tutor_take_courses_bloc.dart';

@freezed
class TutorTakeCoursesState with _$TutorTakeCoursesState {
  const factory TutorTakeCoursesState({
    required List<Tuple3<UserCourse, Course, UserRestrictedModel>>
        coursesToTake,
    required bool isFetching,
    required bool hasError,
    required bool? hasTakingSucced,
    required bool? hasTakingFailed,
  }) = _Initial;

  factory TutorTakeCoursesState.initial() => const TutorTakeCoursesState(
        coursesToTake: [],
        isFetching: false,
        hasError: false,
        hasTakingFailed: false,
        hasTakingSucced: false,
      );
}
