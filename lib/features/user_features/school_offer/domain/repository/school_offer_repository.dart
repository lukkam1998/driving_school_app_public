import 'package:dartz/dartz.dart';
import '../../../../../core/app_models/courses/user_course.dart';
import '../../../../../core/app_models/courses/course.dart';
import '../../../../../core/app_models/failure.dart';
import '../../../../../core/app_models/promotions/promotion.dart';
import '../../../../../core/app_models/success.dart';

abstract class SchoolOfferRepository {
  Future<Either<Failure, List<Tuple2<Course, Promotion?>>>> loadCourses();
  Future<Either<Failure, Success>> enrollUserToCourse(
    Course course,
    Promotion? promotion,
  );
  Future<Either<Failure, List<Tuple2<UserCourse, Course>>>> loadUserCourses();
  Future<Either<Failure, Success>> dropOutOfCourse(UserCourse course);

  Future<Either<Failure, Success>> buyMoreHours(
    UserCourse userCourse,
    int numberOfHours,
    int additionalPrice,
  );
}
