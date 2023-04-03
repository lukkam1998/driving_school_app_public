import 'package:freezed_annotation/freezed_annotation.dart';

import 'course.dart';

part 'course_stats.freezed.dart';
part 'course_stats.g.dart';

@freezed
class CourseStats with _$CourseStats {
  const factory CourseStats({
    required Course course,
    required int peopleWithOngoingCourse,
    required int peopleThatEndedCourse,
  }) = _CourseStats;

  factory CourseStats.fromJson(Map<String, Object?> json) =>
      _$CourseStatsFromJson(json);
}
