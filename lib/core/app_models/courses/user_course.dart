import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_course.freezed.dart';
part 'user_course.g.dart';

@freezed
class UserCourse with _$UserCourse {
  const factory UserCourse({
    required String userCourseId,
    required String courseId,
    required String userId,
    required DateTime dateOfEnroll,
    required bool isApproved,
    required double hoursTotal,
    String? promotionId,
    DateTime? dateOfEnd,
    bool? doesCourseEnd,
    String? tutorId,
    double? hoursLeft,
    double? boughtHours,
    double? additionalPayment,
  }) = _UserCourse;

  factory UserCourse.fromJson(Map<String, Object?> json) =>
      _$UserCourseFromJson(json);
}
