import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/app_models/failure.dart';
import '../../../../../core/app_models/success.dart';
import '../repositories/user_auth_repository.dart';

@lazySingleton
class SignOutUserUsecase {
  final UserAuthRepository repository;

  SignOutUserUsecase(this.repository);

  Future<Either<Failure, Success>> call() async {
    return await repository.signOut();
  }
}
