import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/app_models/courses/course.dart';
import '../../../../../core/app_models/failure.dart';
import '../repositories/courses_repository.dart';

@lazySingleton
class GetOngoingCoursesUsecase {
  final CoursesRepository _repository;

  GetOngoingCoursesUsecase(this._repository);

  Future<Either<Failure, List<Course>>> call() async {
    return _repository.getOngoingCourses();
  }
}
