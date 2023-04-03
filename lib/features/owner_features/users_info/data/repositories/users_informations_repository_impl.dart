import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:managing_driving_school_app/core/data_sources/firebase_courses_data_source.dart';
import '../../../../../core/app_models/courses/user_course_details.dart';
import '../../../../../core/app_models/user_models/user_model.dart';
import '../../../../../core/app_models/failure.dart';
import '../../../../../core/data_sources/firebase_owner_data_source.dart';
import '../../../../../generated/l10n.dart';
import '../../domain/repositories/users_informations_repository.dart';

@LazySingleton(as: UsersInformationsRepository)
class UsersInformationsRepositoryImpl extends UsersInformationsRepository {
  final FirebaseOwnerDataSource _firebaseOwnerDataSource;
  final FirebaseCourseDataSource _firebaseCourseDataSource;

  UsersInformationsRepositoryImpl(
    this._firebaseOwnerDataSource,
    this._firebaseCourseDataSource,
  );
  @override
  Future<Either<Failure, List<UserModel>>> getInstructorsInfo() async {
    return Right(await _firebaseOwnerDataSource.getInstructorsInfo());
  }

  @override
  Future<Either<Failure, List<UserModel>>> getStandardUsersInfo() async {
    return Right(await _firebaseOwnerDataSource.getStandardUsersInfo());
  }

  @override
  Future<Either<Failure, List<UserCourseDetails>>> getUserDetails(
    String userId,
    bool isTutor,
  ) async {
    try {
      List<UserCourseDetails> userCourseDetails = [];
      final userCoursesList =
          await _firebaseOwnerDataSource.getUserDetails(userId, isTutor);

      for (int i = 0; i < userCoursesList.length; i++) {
        final course = await _firebaseCourseDataSource
            .getCourseData(userCoursesList[i].courseId);
        if (userCoursesList[i].isApproved) {
          final secondUserData = isTutor
              ? await _firebaseOwnerDataSource
                  .getStandardUserInfo(userCoursesList[i].userId)
              : await _firebaseOwnerDataSource
                  .getStandardUserInfo(userCoursesList[i].tutorId!);
          userCourseDetails.add(
            UserCourseDetails(
              userCoursesList[i],
              secondUserData,
              course,
            ),
          );
        } else {
          userCourseDetails.add(
            UserCourseDetails(userCoursesList[i], null, course),
          );
        }
      }

      return Right(userCourseDetails);
    } on Exception catch (_) {
      return Left(
        AppFailures.firebaseFailure(
          S().error_during_getting_user_course_data,
        ),
      );
    }
  }
}
