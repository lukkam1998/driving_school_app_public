import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:managing_driving_school_app/core/app_models/lessons/ride_marker.dart';

part 'user_lesson.freezed.dart';
part 'user_lesson.g.dart';

@freezed
class UserLesson with _$UserLesson {
  factory UserLesson({
    required String? lessonId,
    required String userId,
    required String tutorId,
    required String userCourseId,
    required DateTime dayOfLesson,
    required DateTime
        startOfLesson, // TimeOfDay is not serializable instead using String
    required DateTime endOfLesson, // Same here
    required bool isApproved,
    required bool hasTookPlace,
    required bool isModified,
    required bool isGoingNow,
    // ignore: invalid_annotation_target
    @JsonKey(toJson: dateTimeToJson, fromJson: dateTimeFromJson)
        DateTime? realStartOfLesson,
    // ignore: invalid_annotation_target
    @JsonKey(toJson: dateTimeToJson, fromJson: dateTimeFromJson)
        DateTime? realEndOfLesson,
    List<RideMarker>? rideMarkes,
  }) = _UserLesson;

  factory UserLesson.fromJson(Map<String, Object?> json) =>
      _$UserLessonFromJson(json);
}

DateTime? dateTimeToJson(DateTime? timestamp) {
  return timestamp;
}

DateTime? dateTimeFromJson(Timestamp? timestamp) {
  return timestamp?.toDate();
}
