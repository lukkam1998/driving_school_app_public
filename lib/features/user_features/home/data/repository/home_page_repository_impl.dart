import 'package:dartz/dartz.dart';
import 'dart:io';

import 'package:injectable/injectable.dart';
import '../../../../../core/app_models/promotions/promotion_with_course_data.dart';
import '../../../../../core/data_sources/firebase_courses_data_source.dart';
import '../../../../../core/app_models/user_models/user_model.dart';
import '../../../../../core/app_models/success.dart';
import '../../../../../core/app_models/failure.dart';
import '../../../../../core/data_sources/user_firebase_data_source.dart';
import '../../../../../core/services/user_data_service/user_data_service.dart';

import '../../domain/repository/home_page_repository.dart';

@LazySingleton(as: HomePageRepository)
class HomePageRepositoryImpl extends HomePageRepository {
  final UserDataService _userDataService;
  final UserFirebaseDataSource _userFirebaseDataSource;
  final FirebaseCourseDataSource _firebaseCourseDataSource;

  HomePageRepositoryImpl(
    this._userDataService,
    this._userFirebaseDataSource,
    this._firebaseCourseDataSource,
  );

  @override
  Future<Either<Failure, Success>> updateUserData(
    UserModel userModel,
    File? file,
  ) async {
    try {
      final result = await _userFirebaseDataSource.updateUserData(
        userModel,
        file,
      );
      _userDataService.authUser(result);
      return Right(Success());
    } on Exception catch (e) {
      return Left(AppFailures.firebaseFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<PromotionWithCourseData>>> getPromotions() async {
    try {
      return Right(await _firebaseCourseDataSource.getActivePromotions());
    } on Exception catch (_) {
      return const Left(AppFailures.firebaseFailureNoErrorMessage(''));
    }
  }
}
