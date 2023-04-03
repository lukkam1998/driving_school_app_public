part of 'add_course_bloc.dart';

@freezed
class AddCourseEvent with _$AddCourseEvent {
  const factory AddCourseEvent.addCourse(Course course) = AddNewCourseEvent;
}
