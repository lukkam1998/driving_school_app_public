import 'package:dartz/dartz.dart';
import '../../../../../core/app_models/courses/user_course_details.dart';
import '../../../../../core/app_models/failure.dart';
import '../../../../../core/app_models/user_models/user_model.dart';

abstract class UsersInformationsRepository {
  Future<Either<Failure, List<UserModel>>> getStandardUsersInfo();
  Future<Either<Failure, List<UserModel>>> getInstructorsInfo();

  Future<Either<Failure, List<UserCourseDetails>>> getUserDetails(
    String userId,
    bool isTutor,
  );
}
