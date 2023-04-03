import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/app_models/failure.dart';
import '../../../../../core/app_models/success.dart';
import '../../../../../core/app_models/user_models/user_sign_in_data.dart';
import '../repositories/user_auth_repository.dart';

@lazySingleton
class SignInUserUsecase {
  final UserAuthRepository repository;

  SignInUserUsecase(this.repository);

  Future<Either<Failure, Success>> call(UserSignInData userSignInData) async {
    return await repository.signInUser(userSignInData);
  }
}
