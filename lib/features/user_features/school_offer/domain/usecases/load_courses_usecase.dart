import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/app_models/courses/course.dart';
import '../../../../../core/app_models/failure.dart';
import '../../../../../core/app_models/promotions/promotion.dart';
import '../repository/school_offer_repository.dart';

@lazySingleton
class LoadCoursesUsecase {
  final SchoolOfferRepository repository;

  LoadCoursesUsecase(this.repository);

  Future<Either<Failure, List<Tuple2<Course, Promotion?>>>> call() async {
    return await repository.loadCourses();
  }
}
