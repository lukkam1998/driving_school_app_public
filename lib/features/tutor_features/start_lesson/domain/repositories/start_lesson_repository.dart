import 'package:dartz/dartz.dart';
import '../../../../../core/app_models/lessons/user_course_data.dart';

import '../../../../../core/app_models/failure.dart';
import '../../../../../core/app_models/success.dart';

abstract class StartLessonRepository {
  Future<Either<Failure, Success>> startLesson({
    String? lessonId,
    required UserCourseData userCourseData,
    required DateTime lessonStartTime,
  });

  Future<Either<Failure, Success>> endLesson({
    required String lessonId,
    required UserCourseData userCourseData,
    required DateTime lessonEndtime,
  });
}
