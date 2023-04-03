import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/app_models/failure.dart';
import '../../../../../core/app_models/promotions/promotion.dart';
import '../repositories/promotions_repository.dart';

@lazySingleton
class GetPromotionsUsecase {
  final PromotionsRepository _repository;

  GetPromotionsUsecase(this._repository);

  Future<Either<Failure, List<Promotion>>> call() async {
    return await _repository.getPromotions();
  }
}
