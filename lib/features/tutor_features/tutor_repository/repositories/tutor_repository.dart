import 'package:dartz/dartz.dart';
import '../../../../core/app_models/courses/user_course.dart';
import '../../../../core/app_models/failure.dart';
import '../../../../core/app_models/success.dart';

import '../../../../core/app_models/courses/course.dart';
import '../../../../core/app_models/user_models/user_restricted_model.dart';

abstract class TutorRepository {
  Future<Either<Failure, Success>> takeCourse(UserCourse userCourse);
  Future<Either<Failure, List<Tuple3<UserCourse, Course, UserRestrictedModel>>>>
      loadUnapprovedCourses();
}
