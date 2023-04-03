part of 'start_lesson_bloc.dart';

@freezed
class StartLessonEvent with _$StartLessonEvent {
  const factory StartLessonEvent.beginLesson({
    String? lessonId,
    required UserCourseData userCourseData,
  }) = BeginLessonEvent;

  const factory StartLessonEvent.endLesson({
    required String lessonId,
    required UserCourseData userCourseData,
  }) = EndLessonEvent;
}
