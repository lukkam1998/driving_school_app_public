part of 'school_enroll_course_cubit.dart';

@freezed
class SchoolEnrollCourseState with _$SchoolEnrollCourseState {
  const factory SchoolEnrollCourseState.initial(
      {@Default(false) bool isLoading}) = _Initial;
  const factory SchoolEnrollCourseState.success(
      {@Default(false) bool isLoading}) = _Success;
  const factory SchoolEnrollCourseState.failure({
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _Failure;
}
