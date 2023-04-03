import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:managing_driving_school_app/features/user_features/school_offer/domain/repository/school_offer_repository.dart';

import '../../../../../core/app_models/courses/user_course.dart';
import '../../../../../core/app_models/failure.dart';
import '../../../../../core/app_models/success.dart';

@lazySingleton
class BuyMoreHoursUsecase {
  final SchoolOfferRepository _repository;

  BuyMoreHoursUsecase(this._repository);

  Future<Either<Failure, Success>> call(
    UserCourse userCourse,
    int numberOfHours,
    int additionalPrice,
  ) async {
    return _repository.buyMoreHours(
      userCourse,
      numberOfHours,
      additionalPrice,
    );
  }
}
