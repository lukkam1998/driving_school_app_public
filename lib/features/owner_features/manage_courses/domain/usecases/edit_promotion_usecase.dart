import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:managing_driving_school_app/core/app_models/success.dart';
import 'package:managing_driving_school_app/features/owner_features/manage_courses/domain/repositories/promotions_repository.dart';

import '../../../../../core/app_models/failure.dart';
import '../../../../../core/app_models/promotions/edit_promotion_data.dart';

@lazySingleton
class EditPromotionUsecase {
  final PromotionsRepository _repository;

  EditPromotionUsecase(this._repository);

  Future<Either<Failure, Success>> call(EditPromotionData promotion) async {
    return await _repository.editPromotion(promotion);
  }
}
