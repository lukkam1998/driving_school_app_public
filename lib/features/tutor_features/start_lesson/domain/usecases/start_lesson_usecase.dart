import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/app_models/lessons/user_course_data.dart';
import '../repositories/start_lesson_repository.dart';

import '../../../../../core/app_models/failure.dart';
import '../../../../../core/app_models/success.dart';

@lazySingleton
class StartLessonUsecase {
  final StartLessonRepository repository;

  StartLessonUsecase(this.repository);

  Future<Either<Failure, Success>> call({
    required String? lessonId,
    required UserCourseData userCourseData,
    required DateTime lessonStartTime,
  }) async {
    return await repository.startLesson(
      lessonId: lessonId,
      userCourseData: userCourseData,
      lessonStartTime: lessonStartTime,
    );
  }
}
