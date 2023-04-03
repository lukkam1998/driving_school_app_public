import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/app_models/courses/course.dart';
import '../../../../../core/app_models/failure.dart';
import '../../../../../core/app_models/promotions/promotion.dart';
import '../../../../../core/app_models/success.dart';
import '../repository/school_offer_repository.dart';

@lazySingleton
class EnrollUserToCourseUsecase {
  final SchoolOfferRepository repository;

  EnrollUserToCourseUsecase(this.repository);

  Future<Either<Failure, Success>> call(
    Course course,
    Promotion? promotion,
  ) async {
    return await repository.enrollUserToCourse(course, promotion);
  }
}
