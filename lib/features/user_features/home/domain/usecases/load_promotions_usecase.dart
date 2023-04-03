import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/app_models/failure.dart';
import '../repository/home_page_repository.dart';
import '../../../../../core/app_models/promotions/promotion_with_course_data.dart';

@lazySingleton
class LoadPromotionsUsecase {
  final HomePageRepository _repository;

  LoadPromotionsUsecase(this._repository);

  Future<Either<Failure, List<PromotionWithCourseData>>> call() async {
    return await _repository.getPromotions();
  }
}
