import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/app_models/failure.dart';
import '../../../../../core/app_models/success.dart';
import '../../../../../core/app_models/user_models/user_model.dart';
import '../repository/home_page_repository.dart';

@lazySingleton
class UpdateUserDataUsecase {
  final HomePageRepository _repository;

  UpdateUserDataUsecase(this._repository);

  Future<Either<Failure, Success>> call(
    UserModel userModel,
    File? file,
  ) async {
    return await _repository.updateUserData(userModel, file);
  }
}
