part of 'tutor_take_courses_bloc.dart';

@freezed
class TutorTakeCoursesEvent with _$TutorTakeCoursesEvent {
  const factory TutorTakeCoursesEvent.started() = _Started;
  const factory TutorTakeCoursesEvent.takeCourse(UserCourse userCourse) =
      TakeCourseEvent;
  const factory TutorTakeCoursesEvent.loadUnapprovedCourses() =
      LoadUnapprovedCoursesEvent;
}
