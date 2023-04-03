import 'package:dartz/dartz.dart';

import '../../../../../core/app_models/courses/course.dart';
import '../../../../../core/app_models/failure.dart';
import '../../../../../core/app_models/success.dart';

abstract class CoursesRepository {
  Future<Either<Failure, Success>> addCourse(Course course);

  Future<Either<Failure, List<Course>>> getOngoingCourses();

  Future<Either<Failure, Success>> modifyCourse(Course course);
}
