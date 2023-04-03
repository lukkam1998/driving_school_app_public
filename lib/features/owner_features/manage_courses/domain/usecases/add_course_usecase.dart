import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/app_models/courses/course.dart';
import '../../../../../core/app_models/failure.dart';
import '../../../../../core/app_models/success.dart';
import '../repositories/courses_repository.dart';

@lazySingleton
class AddCourseUsecase {
  final CoursesRepository _repository;

  AddCourseUsecase(this._repository);

  Future<Either<Failure, Success>> call(Course course) async {
    return await _repository.addCourse(course);
  }
}
