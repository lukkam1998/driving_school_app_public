import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/app_models/app_exceptions.dart';
import '../../../../../core/app_models/failure.dart';
import '../../../../../core/app_models/lessons/user_course_data.dart';
import '../../../../../core/app_models/lessons/user_lesson.dart';
import '../../../../../core/app_models/success.dart';
import '../../../../../core/data_sources/firebase_courses_data_source.dart';
import '../../../../../core/data_sources/firebase_lessons_data_source.dart';
import '../../../../../core/data_sources/user_firebase_data_source.dart';
import '../../../../../core/services/user_data_service/user_data_service.dart';
import '../../domain/repository/driving_lessons_repository.dart';

@LazySingleton(as: DrivingLessonsRepository)
class DrivingLessonsRepositoryImpl extends DrivingLessonsRepository {
  final FirebaseLessonsDataSource _firebaseLessonsDataSource;
  final FirebaseCourseDataSource _firebaseCourseDataSource;
  final UserFirebaseDataSource _userFirebaseDataSource;
  final UserDataService _userDataService;

  DrivingLessonsRepositoryImpl(
    this._firebaseLessonsDataSource,
    this._userDataService,
    this._firebaseCourseDataSource,
    this._userFirebaseDataSource,
  );

  @override
  Future<Either<Failure, Tuple2<List<UserLesson>, List<UserCourseData>>>>
      loadUserLessons() async {
    try {
      final bool isUserTutor =
          _userDataService.authStream.value.userRole == 'tutor';

      final listOfLessons = await _firebaseLessonsDataSource.loadUserLessons(
        _userDataService.getUserId(),
        isUserTutor,
      );

      final listOfUserCourses =
          await _firebaseCourseDataSource.getUserApprovedCourses(
        _userDataService.getUserId(),
        isUserTutor,
      );

      List<UserCourseData> courseDataList = [];
      for (int i = 0; i < listOfUserCourses.length; i++) {
        final courseData = await _firebaseCourseDataSource
            .getCourseData(listOfUserCourses[i].courseId);
        final userData = isUserTutor
            ? await _userFirebaseDataSource
                .getUserData(listOfUserCourses[i].userId)
            : await _userFirebaseDataSource
                .getUserData(listOfUserCourses[i].tutorId!);
        courseDataList.add(
          UserCourseData(
            course: courseData,
            userCourse: listOfUserCourses[i],
            userData: userData,
          ),
        );
      }
      return Right(Tuple2(listOfLessons, courseDataList));
    } on Exception catch (e) {
      if (e is AppFirebaseException) {
        return Left(AppFailures.firebaseFailure(e.message));
      } 
      return Left(AppFailures.firebaseFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Success>> planLesson(UserLesson userLesson) async {
    try {
      await _firebaseLessonsDataSource.planLesson(userLesson);
      return Right(Success());
    } on Exception {
      return const Left(AppFailures.firebaseFailure(''));
    }
  }

  @override
  Future<Either<Failure, Success>> cancelLesson(String lessonId) async {
    try {
      return Right(await _firebaseLessonsDataSource.cancelLesson(lessonId));
    } on Exception catch (e) {
      return const Left(AppFailures.firebaseFailure('Some message')); //TODO
    }
  }

  @override
  Future<Either<Failure, Success>> confirmLesson(UserLesson lesson) async {
    try {
      return Right(await _firebaseLessonsDataSource.confirmLesson(lesson));
    } on Exception catch (e) {
      return const Left(AppFailures.firebaseFailure('Some message')); //TODO
    }
  }

  @override
  Future<Either<Failure, Success>> modifyLesson(UserLesson lesson) async {
    try {
      return Right(await _firebaseLessonsDataSource.modifyLesson(lesson));
    } on Exception catch (_) {
      return const Left(AppFailures.firebaseFailure('Some message')); //TODO
    }
  }
}
