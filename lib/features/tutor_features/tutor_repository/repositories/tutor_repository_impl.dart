import 'package:injectable/injectable.dart';
import '../../../../core/data_sources/firebase_messages_data_source.dart';
import '../../../../core/services/user_data_service/user_data_service.dart';
import '../../../../core/app_models/app_exceptions.dart';
import '../../../../core/app_models/success.dart';
import '../../../../core/app_models/failure.dart';
import '../../../../core/app_models/courses/user_course.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/app_models/user_models/user_restricted_model.dart';
import '../../../../core/data_sources/firebase_courses_data_source.dart';
import '../../../../core/data_sources/user_firebase_data_source.dart';
import 'tutor_repository.dart';

import '../../../../core/app_models/courses/course.dart';

@LazySingleton(as: TutorRepository)
class TutorRepositoryImpl extends TutorRepository {
  final FirebaseCourseDataSource _firebaseCourseDataSource;
  final FirebaseMessagesDataSource _firebaseMessagesDataSource;
  final UserFirebaseDataSource _userFirebaseDataSource;
  final UserDataService _userDataService;

  TutorRepositoryImpl(
    this._firebaseMessagesDataSource,
    this._firebaseCourseDataSource,
    this._userFirebaseDataSource,
    this._userDataService,
  );

  @override
  Future<Either<Failure, Success>> takeCourse(UserCourse userCourse) async {
    try {
      await _firebaseCourseDataSource.takeCourse(userCourse);
      await _createChatWithUser(userCourse);
      return Right(Success());
    } on Exception catch (e) {
      if (e is AppFirebaseException) {
        return Left(AppFailures.firebaseFailure(e.message));
      }
      return const Left(AppFailures.firebaseFailure(''));
    }
  }

  @override
  Future<Either<Failure, List<Tuple3<UserCourse, Course, UserRestrictedModel>>>>
      loadUnapprovedCourses() async {
    try {
      final List<Tuple3<UserCourse, Course, UserRestrictedModel>> tupleList =
          [];
      final userCourse =
          await _firebaseCourseDataSource.loadUnapprovedCourses();

      for (int i = 0; i < userCourse.length; i++) {
        final course = await _firebaseCourseDataSource.getCourseData(
          userCourse[i].courseId,
        );
        final userRestrictedData = await _userFirebaseDataSource.getUserData(
          userCourse[i].userId,
        );
        tupleList.add(Tuple3(userCourse[i], course, userRestrictedData));
      }

      return Right(tupleList);
    } on Exception catch (_) {
      return const Left(AppFailures.firebaseFailure(''));
    }
  }

  Future<void> _createChatWithUser(UserCourse userCourse) async {
    final tutorChats = _userDataService.authStream.value.chats;
    final userChats =
        await _firebaseMessagesDataSource.getUserChats(userCourse.userId);
    userChats.fold(
      (noChats) async => await _firebaseMessagesDataSource.createChatWithUser(
        _userDataService.getUserId(),
        userCourse.userId,
      ),
      (chats) async {
        bool? doesTutorHaveChatWithUser = false;
        for (int i = 0; i < chats.length; i++) {
          if (tutorChats == null || tutorChats.isEmpty) {
            break;
          }
          doesTutorHaveChatWithUser = tutorChats.contains(chats[i]);
        }

        if (doesTutorHaveChatWithUser!) {
          return;
        } else {
          await _firebaseMessagesDataSource.createChatWithUser(
            _userDataService.getUserId(),
            userCourse.userId,
          );
        }
      },
    );
  }
}
