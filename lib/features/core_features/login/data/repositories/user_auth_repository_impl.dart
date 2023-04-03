import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:managing_driving_school_app/core/app_models/app_exceptions.dart';

import '../../../../../core/app_models/failure.dart';
import '../../../../../core/app_models/success.dart';
import '../../../../../core/app_models/user_models/user_register_data.dart';
import '../../../../../core/app_models/user_models/user_sign_in_data.dart';
import '../../../../../core/data_sources/firebase_login_data_source.dart';
import '../../../../../core/services/user_data_service/user_data_service.dart';
import '../../domain/repositories/user_auth_repository.dart';

@LazySingleton(as: UserAuthRepository)
class UserAuthRepositoryImpl extends UserAuthRepository {
  final FirebaseLoginDataSource _firebaseLoginDataSource;
  final UserDataService _userDataService;

  UserAuthRepositoryImpl(
    this._firebaseLoginDataSource,
    this._userDataService,
  );

  @override
  Future<Either<Failure, Success>> signUpUser(
    UserRegisterData userRegisterData,
  ) async {
    try {
      final result =
          await _firebaseLoginDataSource.signUpUser(userRegisterData);
      return Right(result);
    } on Exception catch (e) {
      if (e is AppFirebaseException) {
        return Left(AppFailures.firebaseFailure(e.message));
      }
      return const Left(AppFailures.firebaseFailure(''));
    }
  }

  @override
  Future<Either<Failure, Success>> signInUser(
    UserSignInData userSignInData,
  ) async {
    try {
      final user = await _firebaseLoginDataSource.signInUser(userSignInData);
      _userDataService.authUser(user.copyWith(isAuthorized: true));
      return Right(Success());
    } on Exception catch (e) {
      if (e is AppFirebaseException) {
        return Left(AppFailures.firebaseFailure(e.message));
      }
      return const Left(AppFailures.firebaseFailure(''));
    }
  }

  @override
  Future<Either<Failure, Success>> signOut() async {
    try {
      final result = await _firebaseLoginDataSource.signOut();
      _userDataService.signOutUser();
      return Right(result);
    } on Exception catch (_) {
      return const Left(AppFailures.firebaseFailure(''));
    }
  }

  @override
  Future<Either<Failure, Success>> signUpInstructor(
    UserRegisterData userRegisterData,
  ) async {
    try {
      final result =
          await _firebaseLoginDataSource.signUpInstructor(userRegisterData);
      return Right(result);
    } on Exception catch (_) {
      return const Left(AppFailures.firebaseFailure(''));
    }
  }
}
