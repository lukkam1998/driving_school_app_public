import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/app_models/lessons/user_course_data.dart';
import '../repositories/start_lesson_repository.dart';

import '../../../../../core/app_models/failure.dart';
import '../../../../../core/app_models/success.dart';

@lazySingleton
class EndLessonUsecase {
  final StartLessonRepository repository;

  EndLessonUsecase(this.repository);

  Future<Either<Failure, Success>> call(
      {required String lessonId,
      required UserCourseData userCourseData,
      required DateTime lessonEndTime}) async {
    return await repository.endLesson(
      lessonId: lessonId,
      userCourseData: userCourseData,
      lessonEndtime: lessonEndTime,
    );
  }
}
