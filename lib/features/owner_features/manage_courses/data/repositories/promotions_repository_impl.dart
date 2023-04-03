
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:managing_driving_school_app/core/app_models/success.dart';
import 'package:managing_driving_school_app/core/app_models/promotions/promotion.dart';
import 'package:managing_driving_school_app/core/app_models/failure.dart';

import '../../../../../core/app_models/promotions/edit_promotion_data.dart';
import '../../../../../core/app_models/promotions/promotion_add_data.dart';
import '../../../../../core/data_sources/firebase_promotions_data_source.dart';
import '../../../../../generated/l10n.dart';
import '../../domain/repositories/promotions_repository.dart';

@LazySingleton(as: PromotionsRepository)
class PromotionsRepositoryImpl extends PromotionsRepository {
  final FirebasePromotionsDataSource _firebasePromotionsDataSource;

  PromotionsRepositoryImpl(this._firebasePromotionsDataSource);

  @override
  Future<Either<Failure, Success>> addPromotion(
    AddPromotionData promotion,
  ) async {
    try {
      final result =
          await _firebasePromotionsDataSource.addPromotion(promotion);
      return Right(result);
    } on Exception catch (_) {}
    return const Left(
      AppFailures.firebaseFailureNoErrorMessage(''),
    );
  }

  @override
  Future<Either<Failure, Success>> editPromotion(
    EditPromotionData promotion,
  ) async {
    try {
      final result =
          await _firebasePromotionsDataSource.editPromotion(promotion);
      return Right(result);
    } on Exception catch (_) {
      return const Left(AppFailures.firebaseFailureNoErrorMessage(''));
    }
  }

  @override
  Future<Either<Failure, Success>> endPromotion(String promotionId) {
    // TODO: implement endPromotion
    try {} on Exception catch (_) {}
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Promotion>>> getPromotions() async {
    try {
      return Right(await _firebasePromotionsDataSource.getPromotions());
    } on Exception catch (_) {
      return Left(AppFailures.firebaseFailure(S().failed_getting_promotions));
    }
  }
}
