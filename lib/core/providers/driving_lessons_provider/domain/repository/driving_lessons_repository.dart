import 'package:dartz/dartz.dart';
import '../../../../../core/app_models/lessons/user_lesson.dart';
import '../../../../../core/app_models/success.dart';

import '../../../../../core/app_models/failure.dart';
import '../../../../../core/app_models/lessons/user_course_data.dart';

abstract class DrivingLessonsRepository {
  Future<Either<Failure, Tuple2<List<UserLesson>, List<UserCourseData>>>>
      loadUserLessons();
  Future<Either<Failure, Success>> planLesson(UserLesson userLesson);
  Future<Either<Failure, Success>> cancelLesson(String lessonId);
  Future<Either<Failure, Success>> confirmLesson(UserLesson lesson);
  Future<Either<Failure, Success>> modifyLesson(UserLesson lesson);
}
