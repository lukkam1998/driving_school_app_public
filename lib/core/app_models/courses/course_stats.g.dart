// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CourseStats _$$_CourseStatsFromJson(Map<String, dynamic> json) =>
    _$_CourseStats(
      course: Course.fromJson(json['course'] as Map<String, dynamic>),
      peopleWithOngoingCourse: json['peopleWithOngoingCourse'] as int,
      peopleThatEndedCourse: json['peopleThatEndedCourse'] as int,
    );

Map<String, dynamic> _$$_CourseStatsToJson(_$_CourseStats instance) =>
    <String, dynamic>{
      'course': instance.course,
      'peopleWithOngoingCourse': instance.peopleWithOngoingCourse,
      'peopleThatEndedCourse': instance.peopleThatEndedCourse,
    };
