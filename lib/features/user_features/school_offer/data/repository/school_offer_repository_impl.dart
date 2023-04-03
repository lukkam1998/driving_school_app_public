import 'package:injectable/injectable.dart';
import '../../../../../core/app_models/courses/user_course.dart';
import '../../../../../core/app_models/app_exceptions.dart';
import '../../../../../core/app_models/failure.dart';
import '../../../../../core/app_models/courses/course.dart';
import 'package:dartz/dartz.dart';
import '../../../../../core/app_models/promotions/promotion.dart';
import '../../../../../core/app_models/success.dart';
import '../../../../../core/data_sources/firebase_courses_data_source.dart';
import '../../../../../core/services/user_data_service/user_data_service.dart';
import '../../domain/repository/school_offer_repository.dart';

@LazySingleton(as: SchoolOfferRepository)
class SchoolOfferRepositoryImpl extends SchoolOfferRepository {
  final FirebaseCourseDataSource _firebaseCourseDataSource;
  final UserDataService _userDataService;

  SchoolOfferRepositoryImpl(
    this._firebaseCourseDataSource,
    this._userDataService,
  );
  @override
  Future<Either<Failure, List<Tuple2<Course, Promotion?>>>>
      loadCourses() async {
    try {
      return Right(await _firebaseCourseDataSource.loadCourses());
    } on Exception catch (e) {
      return Left(AppFailures.firebaseFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Success>> enrollUserToCourse(
    Course course,
    Promotion? promotion,
  ) async {
    try {
      final result = await _firebaseCourseDataSource.enrollUserToCourse(
        course,
        promotion,
        _userDataService.getUserId(),
      );

      return Right(result);
    } on Exception catch (e) {
      if (e is AppFirebaseException) {
        return Left(AppFailures.firebaseFailure(e.message));
      }
      return Left(AppFailures.firebaseFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Tuple2<UserCourse, Course>>>>
      loadUserCourses() async {
    try {
      final result = await _firebaseCourseDataSource
          .loadUserCourses(_userDataService.getUserId());

      return Right(result);
    } on Exception catch (e) {
      if (e is AppFirebaseException) {
        return Left(AppFailures.firebaseFailure(e.message));
      }
      return Left(AppFailures.firebaseFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Success>> dropOutOfCourse(UserCourse course) async {
    return Right(await _firebaseCourseDataSource.dropOutOfTheCourse(course));
  }

  @override
  Future<Either<Failure, Success>> buyMoreHours(
    UserCourse userCourse,
    int numberOfHours,
    int additionalPrice,
  ) async {
    try {
      final result = await _firebaseCourseDataSource.buyMoreHours(
        userCourse,
        numberOfHours,
        additionalPrice,
      );
      return Right(result);
    } on Exception catch (_) {
      return const Left(AppFailures.firebaseFailureNoErrorMessage(''));
    }
  }
}
