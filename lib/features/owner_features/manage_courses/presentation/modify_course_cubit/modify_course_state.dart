part of 'modify_course_cubit.dart';

@freezed
class ModifyCourseState with _$ModifyCourseState {
  const factory ModifyCourseState.initial(bool isLoading) = _Initial;
  const factory ModifyCourseState.success(bool isLoading) = _Success;
  const factory ModifyCourseState.failure(bool isLoading) = _Failure;
}
