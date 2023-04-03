import '../courses/user_course.dart';
import '../user_models/user_restricted_model.dart';

import '../courses/course.dart';

class UserCourseData {
  final Course course;
  final UserCourse userCourse;
  final UserRestrictedModel userData;

  UserCourseData({
    required this.course,
    required this.userCourse,
    required this.userData,
  });
}
