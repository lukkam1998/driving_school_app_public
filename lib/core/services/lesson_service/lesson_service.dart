import 'dart:async';

import 'package:injectable/injectable.dart';
import '../../app_models/lessons/user_course_data.dart';
import '../../app_models/success.dart';
import '../../data_sources/firebase_lessons_data_source.dart';
import '../../data_sources/user_firebase_data_source.dart';

@lazySingleton
class LessonService {
  final FirebaseLessonsDataSource _firebaseLessonsDataSource;
  final UserFirebaseDataSource _userFirebaseDataSource;
  bool _doesLessonStarted = false;

  LessonService(
    this._firebaseLessonsDataSource,
    this._userFirebaseDataSource,
  );

  Future<void> startLesson({
    required String lessonId,
    required UserCourseData userCourseData,
    required DateTime startOfLesson,
  }) async {
    final userData = await _userFirebaseDataSource.getUserData(
      userCourseData.userCourse.userId,
    );
    final tutorData = await _userFirebaseDataSource.getUserData(
      userCourseData.userCourse.tutorId!,
    );
    _doesLessonStarted = true;
    await _firebaseLessonsDataSource.startLesson(lessonId, startOfLesson);
    await _firebaseLessonsDataSource.createLiveLessonData(
      lessonId: lessonId,
      userCourseData: userCourseData,
      tutorData: tutorData,
      userData: userData,
    );
    _startRecording(lessonId: lessonId, userCourseData: userCourseData);
  }

  void _startRecording({
    required String lessonId,
    required UserCourseData userCourseData,
  }) async {
    while (true) {
      if (_doesLessonStarted) {
        await Future.delayed(const Duration(seconds: 3));
        {
          if (!_doesLessonStarted) {
            return;
          }
          await _firebaseLessonsDataSource.addMarker(
            userCourseData: userCourseData,
            lessonId: lessonId,
          );
          if (!_doesLessonStarted) {
            return;
          }
          await _updateLiveLesson(
            lessonId: lessonId,
            userCourseData: userCourseData,
          );
        }
      } else {
        return;
      }
    }
  }

  Future<Success> endLesson(String lessonId, DateTime endOfLesson) async {
    _doesLessonStarted = false;
    return await _firebaseLessonsDataSource.endLesson(lessonId, endOfLesson);
  }

  Future<void> _updateLiveLesson({
    required String lessonId,
    required UserCourseData userCourseData,
  }) async {
    // TO CHECK HOW WORKS
    scheduleMicrotask(() {
      _firebaseLessonsDataSource.updateLiveLessonData(
        lessonId: lessonId,
      );
    });
  }
}
