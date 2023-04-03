import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/app_models/courses/user_course.dart';
import '../../../../../core/app_models/failure.dart';
import '../../../../../core/app_models/success.dart';
import '../../../tutor_repository/repositories/tutor_repository.dart';

@lazySingleton
class TakeCourseUsecase {
  final TutorRepository _repository;

  TakeCourseUsecase(this._repository);

  Future<Either<Failure, Success>> call(
    UserCourse userCourse,
  ) async {
    return await _repository.takeCourse(userCourse);
  }
}
