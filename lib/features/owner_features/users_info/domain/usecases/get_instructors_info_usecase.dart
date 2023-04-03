import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/app_models/user_models/user_model.dart';
import '../repositories/users_informations_repository.dart';

import '../../../../../core/app_models/failure.dart';

@lazySingleton
class GetInstructorsInfoUsecase {
  final UsersInformationsRepository _repository;

  GetInstructorsInfoUsecase(this._repository);

  Future<Either<Failure, List<UserModel>>> call() async {
    return await _repository.getInstructorsInfo();
  }
}
