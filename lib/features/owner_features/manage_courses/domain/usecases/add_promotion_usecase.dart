
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:managing_driving_school_app/core/app_models/success.dart';
import '../../../../../core/app_models/failure.dart';
import '../../../../../core/app_models/promotions/promotion_add_data.dart';
import '../repositories/promotions_repository.dart';

@lazySingleton
class AddPromotionUsecase {
  final PromotionsRepository _repository;

  AddPromotionUsecase(this._repository);

  Future<Either<Failure, Success>> call(
    AddPromotionData promotion,
  ) async {
    return await _repository.addPromotion(promotion);
  }
}
