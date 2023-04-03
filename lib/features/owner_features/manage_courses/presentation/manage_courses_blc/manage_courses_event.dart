part of 'manage_courses_bloc.dart';

@freezed
class ManageCoursesEvent with _$ManageCoursesEvent {
  const factory ManageCoursesEvent.loadCourses() = LoadCoursesEvent;
}
