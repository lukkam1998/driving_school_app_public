import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:managing_driving_school_app/core/app_models/courses/user_course.dart';

import '../user_models/user_model.dart';
import 'course.dart';

part 'user_course_details.g.dart';
part 'user_course_details.freezed.dart';

@freezed
class UserCourseDetails with _$UserCourseDetails {
  const factory UserCourseDetails(
    UserCourse userCourse,
    UserModel? secondUserData,
    Course course,
  ) = _UserCourseDetails;

  factory UserCourseDetails.fromJson(Map<String, Object?> json) =>
      _$UserCourseDetailsFromJson(json);
}
