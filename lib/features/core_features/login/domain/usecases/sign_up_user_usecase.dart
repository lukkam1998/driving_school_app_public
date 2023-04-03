import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/app_models/failure.dart';
import '../../../../../core/app_models/success.dart';
import '../../../../../core/app_models/user_models/user_register_data.dart';
import '../repositories/user_auth_repository.dart';

@lazySingleton
class SignUpUserUsecase {
  final UserAuthRepository repository;

  SignUpUserUsecase(this.repository);

  Future<Either<Failure, Success>> call(
    UserRegisterData userRegisterData,
  ) async {
    return await repository.signUpUser(userRegisterData);
  }
}
