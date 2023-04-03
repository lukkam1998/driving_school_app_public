import 'ride_marker.dart';
import 'user_lesson.dart';
import '../user_models/user_restricted_model.dart';

class OngoingLesson {
  final List<OngoingLessonDetails> ongoingLessonDetailsList;

  OngoingLesson(this.ongoingLessonDetailsList);
}

class OngoingLessonDetails {
  final RideMarker rideMarker;
  final UserRestrictedModel tutorData;
  final UserRestrictedModel userData;
  final UserLesson userLesson;

  OngoingLessonDetails({
    required this.rideMarker,
    required this.tutorData,
    required this.userData,
    required this.userLesson,
  });
}
