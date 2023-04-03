part of 'manage_courses_bloc.dart';

@freezed
class ManageCoursesState with _$ManageCoursesState {
  const factory ManageCoursesState({
    required List<Course> courses,
    required bool isLoading,
    required bool hasError,
    required bool actionSucced,
  }) = _Initial;

  factory ManageCoursesState.initial() => const ManageCoursesState(
        courses: [],
        isLoading: false,
        hasError: false,
        actionSucced: false,
      );
}
