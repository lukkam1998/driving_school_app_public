// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_lesson_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LiveLessonView _$$_LiveLessonViewFromJson(Map<String, dynamic> json) =>
    _$_LiveLessonView(
      tutorName: json['tutorName'] as String,
      tutorSurname: json['tutorSurname'] as String,
      userName: json['userName'] as String,
      userSurname: json['userSurname'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      courseName: json['courseName'] as String,
    );

Map<String, dynamic> _$$_LiveLessonViewToJson(_$_LiveLessonView instance) =>
    <String, dynamic>{
      'tutorName': instance.tutorName,
      'tutorSurname': instance.tutorSurname,
      'userName': instance.userName,
      'userSurname': instance.userSurname,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'courseName': instance.courseName,
    };
