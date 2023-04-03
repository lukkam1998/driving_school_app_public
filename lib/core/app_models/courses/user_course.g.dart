// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserCourse _$$_UserCourseFromJson(Map<String, dynamic> json) =>
    _$_UserCourse(
      userCourseId: json['userCourseId'] as String,
      courseId: json['courseId'] as String,
      userId: json['userId'] as String,
      dateOfEnroll: DateTime.parse(json['dateOfEnroll'] as String),
      isApproved: json['isApproved'] as bool,
      hoursTotal: (json['hoursTotal'] as num).toDouble(),
      promotionId: json['promotionId'] as String?,
      dateOfEnd: json['dateOfEnd'] == null
          ? null
          : DateTime.parse(json['dateOfEnd'] as String),
      doesCourseEnd: json['doesCourseEnd'] as bool?,
      tutorId: json['tutorId'] as String?,
      hoursLeft: (json['hoursLeft'] as num?)?.toDouble(),
      boughtHours: (json['boughtHours'] as num?)?.toDouble(),
      additionalPayment: (json['additionalPayment'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_UserCourseToJson(_$_UserCourse instance) =>
    <String, dynamic>{
      'userCourseId': instance.userCourseId,
      'courseId': instance.courseId,
      'userId': instance.userId,
      'dateOfEnroll': instance.dateOfEnroll.toIso8601String(),
      'isApproved': instance.isApproved,
      'hoursTotal': instance.hoursTotal,
      'promotionId': instance.promotionId,
      'dateOfEnd': instance.dateOfEnd?.toIso8601String(),
      'doesCourseEnd': instance.doesCourseEnd,
      'tutorId': instance.tutorId,
      'hoursLeft': instance.hoursLeft,
      'boughtHours': instance.boughtHours,
      'additionalPayment': instance.additionalPayment,
    };
