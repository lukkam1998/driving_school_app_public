import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/app_models/failure.dart';
import '../../../../../core/app_models/lessons/user_lesson.dart';
import '../../../../../core/app_models/success.dart';
import '../../../../../core/providers/driving_lessons_provider/domain/repository/driving_lessons_repository.dart';

@lazySingleton
class ConfirmLessonUsecase {
  final DrivingLessonsRepository _repository;

  ConfirmLessonUsecase(this._repository);

  Future<Either<Failure, Success>> call(UserLesson lesson) {
    return _repository.confirmLesson(lesson);
  }
}
