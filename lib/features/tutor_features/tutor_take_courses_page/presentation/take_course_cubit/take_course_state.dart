part of 'take_course_cubit.dart';

@freezed
class TakeCourseState with _$TakeCourseState {
  const factory TakeCourseState.initial(bool isLoading) = _Initial;
  const factory TakeCourseState.success(bool isLoading) = _Success;
  const factory TakeCourseState.failure(bool isLoading) = _Failure;
}
