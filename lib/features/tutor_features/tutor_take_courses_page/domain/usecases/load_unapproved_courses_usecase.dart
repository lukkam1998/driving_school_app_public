import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/app_models/courses/user_course.dart';
import '../../../../../core/app_models/courses/course.dart';
import '../../../../../core/app_models/failure.dart';
import '../../../../../core/app_models/user_models/user_restricted_model.dart';
import '../../../tutor_repository/repositories/tutor_repository.dart';

@lazySingleton
class LoadUnapprovedCoursesUsecase {
  final TutorRepository _repository;

  LoadUnapprovedCoursesUsecase(this._repository);

  Future<Either<Failure, List<Tuple3<UserCourse, Course, UserRestrictedModel>>>>
      call() async {
    return await _repository.loadUnapprovedCourses();
  }
}
