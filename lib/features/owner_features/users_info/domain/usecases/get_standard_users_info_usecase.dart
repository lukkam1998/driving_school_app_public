import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/app_models/failure.dart';
import '../../../../../core/app_models/user_models/user_model.dart';
import '../repositories/users_informations_repository.dart';

@lazySingleton
class GetStandardUsersInfoUsecase {
  final UsersInformationsRepository _repository;

  GetStandardUsersInfoUsecase(this._repository);

  Future<Either<Failure, List<UserModel>>> call() async {
    return await _repository.getStandardUsersInfo();
  }
}
