import 'dart:io';

import 'package:dartz/dartz.dart';
import '../../../../../core/app_models/failure.dart';
import '../../../../../core/app_models/promotions/promotion_with_course_data.dart';
import '../../../../../core/app_models/success.dart';
import '../../../../../core/app_models/user_models/user_model.dart';

abstract class HomePageRepository {
  Future<Either<Failure, Success>> updateUserData(
    UserModel userModel,
    File? file,
  );

  Future<Either<Failure, List<PromotionWithCourseData>>> getPromotions();
}
