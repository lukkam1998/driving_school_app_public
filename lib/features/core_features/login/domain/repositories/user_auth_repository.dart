import 'package:dartz/dartz.dart';

import '../../../../../core/app_models/failure.dart';
import '../../../../../core/app_models/success.dart';
import '../../../../../core/app_models/user_models/user_register_data.dart';
import '../../../../../core/app_models/user_models/user_sign_in_data.dart';

abstract class UserAuthRepository {
  Future<Either<Failure, Success>> signUpUser(
    UserRegisterData userRegisterData,
  );
  Future<Either<Failure, Success>> signInUser(
    UserSignInData userSignInData,
  );
  Future<Either<Failure, Success>> signOut();
  Future<Either<Failure, Success>> signUpInstructor(
    UserRegisterData userRegisterData,
  );
}
