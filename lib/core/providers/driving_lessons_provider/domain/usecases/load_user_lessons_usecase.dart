import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/app_models/failure.dart';
import '../../../../../core/app_models/lessons/user_course_data.dart';
import '../../../../../core/app_models/lessons/user_lesson.dart';
import '../repository/driving_lessons_repository.dart';

@lazySingleton
class LoadUserLessonsUsecase {
  final DrivingLessonsRepository repository;

  LoadUserLessonsUsecase(this.repository);

  Future<Either<Failure, Tuple2<List<UserLesson>, List<UserCourseData>>>>
      call() async {
    return await repository.loadUserLessons();
  }
}
