import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/app_models/courses/user_course.dart';
import '../../../../../core/app_models/courses/course.dart';
import '../../../../../core/app_models/failure.dart';
import '../repository/school_offer_repository.dart';

@lazySingleton
class LoadUserCoursesUsecase {
  final SchoolOfferRepository repository;

  LoadUserCoursesUsecase(this.repository);

  Future<Either<Failure, List<Tuple2<UserCourse, Course>>>> call() async {
    return await repository.loadUserCourses();
  }
}
