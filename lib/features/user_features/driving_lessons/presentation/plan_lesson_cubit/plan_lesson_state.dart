part of 'plan_lesson_cubit.dart';

@freezed
class PlanLessonState with _$PlanLessonState {
  const factory PlanLessonState.initial(bool isLoading) = _Initial;
  const factory PlanLessonState.failure(bool isLoading) = _Failure;
  const factory PlanLessonState.success(bool isLoading) = _Success;
}
