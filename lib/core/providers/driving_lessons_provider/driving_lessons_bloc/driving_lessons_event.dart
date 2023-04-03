part of 'driving_lessons_bloc.dart';

@freezed
class DrivingLessonsEvent with _$DrivingLessonsEvent {
  const factory DrivingLessonsEvent.loadUserLessonsData() =
      LoadUserLessonsDataEvent;
}
