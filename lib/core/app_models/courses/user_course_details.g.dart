// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_course_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserCourseDetails _$$_UserCourseDetailsFromJson(Map<String, dynamic> json) =>
    _$_UserCourseDetails(
      UserCourse.fromJson(json['userCourse'] as Map<String, dynamic>),
      json['secondUserData'] == null
          ? null
          : UserModel.fromJson(json['secondUserData'] as Map<String, dynamic>),
      Course.fromJson(json['course'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserCourseDetailsToJson(
        _$_UserCourseDetails instance) =>
    <String, dynamic>{
      'userCourse': instance.userCourse,
      'secondUserData': instance.secondUserData,
      'course': instance.course,
    };
