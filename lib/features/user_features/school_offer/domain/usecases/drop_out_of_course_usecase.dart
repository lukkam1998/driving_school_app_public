import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:managing_driving_school_app/core/app_models/courses/user_course.dart';
import '../../../../../core/app_models/failure.dart';
import '../../../../../core/app_models/success.dart';
import '../repository/school_offer_repository.dart';

@lazySingleton
class DropOutOfCourseUsecase {
  final SchoolOfferRepository repository;

  DropOutOfCourseUsecase(this.repository);

  Future<Either<Failure, Success>> call(
    UserCourse course,
  ) async {
    return await repository.dropOutOfCourse(course);
  }
}
