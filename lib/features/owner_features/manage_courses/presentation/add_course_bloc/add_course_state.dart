part of 'add_course_bloc.dart';

@freezed
class AddCourseState with _$AddCourseState {
  const factory AddCourseState.initial(bool isLoading) = _Initial;
  const factory AddCourseState.success(bool isLoading) = _Success;
  const factory AddCourseState.failure(bool isLoading) = _Failure;
}
