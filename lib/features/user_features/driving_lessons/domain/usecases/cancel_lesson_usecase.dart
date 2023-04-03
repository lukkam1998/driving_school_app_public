import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/app_models/failure.dart';
import '../../../../../core/app_models/success.dart';
import '../../../../../core/providers/driving_lessons_provider/domain/repository/driving_lessons_repository.dart';

@lazySingleton
class CancelLessonUsecase {
  final DrivingLessonsRepository _repository;

  CancelLessonUsecase(this._repository);

  Future<Either<Failure, Success>> call(String lessonId) {
    return _repository.cancelLesson(lessonId);
  }
}
