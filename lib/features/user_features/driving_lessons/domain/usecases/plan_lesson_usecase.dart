import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/app_models/failure.dart';
import '../../../../../core/app_models/lessons/user_lesson.dart';
import '../../../../../core/app_models/success.dart';
import '../../../../../core/providers/driving_lessons_provider/domain/repository/driving_lessons_repository.dart';

@lazySingleton
class PlanLessonUsecase {
  final DrivingLessonsRepository repository;

  PlanLessonUsecase(this.repository);

  Future<Either<Failure, Success>> call(UserLesson userLesson) async {
    return await repository.planLesson(userLesson);
  }
}
