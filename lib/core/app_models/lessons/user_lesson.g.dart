// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_lesson.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserLesson _$$_UserLessonFromJson(Map<String, dynamic> json) =>
    _$_UserLesson(
      lessonId: json['lessonId'] as String?,
      userId: json['userId'] as String,
      tutorId: json['tutorId'] as String,
      userCourseId: json['userCourseId'] as String,
      dayOfLesson: DateTime.parse(json['dayOfLesson'] as String),
      startOfLesson: DateTime.parse(json['startOfLesson'] as String),
      endOfLesson: DateTime.parse(json['endOfLesson'] as String),
      isApproved: json['isApproved'] as bool,
      hasTookPlace: json['hasTookPlace'] as bool,
      isModified: json['isModified'] as bool,
      isGoingNow: json['isGoingNow'] as bool,
      realStartOfLesson:
          dateTimeFromJson(json['realStartOfLesson'] as Timestamp?),
      realEndOfLesson: dateTimeFromJson(json['realEndOfLesson'] as Timestamp?),
      rideMarkes: (json['rideMarkes'] as List<dynamic>?)
          ?.map((e) => RideMarker.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserLessonToJson(_$_UserLesson instance) =>
    <String, dynamic>{
      'lessonId': instance.lessonId,
      'userId': instance.userId,
      'tutorId': instance.tutorId,
      'userCourseId': instance.userCourseId,
      'dayOfLesson': instance.dayOfLesson.toIso8601String(),
      'startOfLesson': instance.startOfLesson.toIso8601String(),
      'endOfLesson': instance.endOfLesson.toIso8601String(),
      'isApproved': instance.isApproved,
      'hasTookPlace': instance.hasTookPlace,
      'isModified': instance.isModified,
      'isGoingNow': instance.isGoingNow,
      'realStartOfLesson': dateTimeToJson(instance.realStartOfLesson),
      'realEndOfLesson': dateTimeToJson(instance.realEndOfLesson),
      'rideMarkes': instance.rideMarkes,
    };
