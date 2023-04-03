
import 'package:dartz/dartz.dart';
import 'package:managing_driving_school_app/core/app_models/success.dart';

import '../../../../../core/app_models/failure.dart';
import '../../../../../core/app_models/promotions/edit_promotion_data.dart';
import '../../../../../core/app_models/promotions/promotion.dart';
import '../../../../../core/app_models/promotions/promotion_add_data.dart';

abstract class PromotionsRepository {
  Future<Either<Failure, Success>> endPromotion(String promotionId);

  Future<Either<Failure, Success>> addPromotion(AddPromotionData promotion);

  Future<Either<Failure, Success>> editPromotion(EditPromotionData promotion);

  Future<Either<Failure, List<Promotion>>> getPromotions();
}
