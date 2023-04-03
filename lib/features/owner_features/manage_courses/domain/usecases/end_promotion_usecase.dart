import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/app_models/failure.dart';
import '../../../../../core/app_models/success.dart';
import '../repositories/promotions_repository.dart';

@lazySingleton
class EndPromotionUsecase {
  final PromotionsRepository _repository;

  EndPromotionUsecase(this._repository);

  Future<Either<Failure, Success>> call(String promotionId) async {
    return await _repository.endPromotion(promotionId);
  }
}
