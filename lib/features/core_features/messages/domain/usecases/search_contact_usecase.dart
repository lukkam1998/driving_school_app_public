import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/app_models/failure.dart';
import '../../../../../core/app_models/user_models/user_restricted_model.dart';
import '../repository/messages_repository.dart';

@lazySingleton
class SearchContactUsecase {
  final MessagesRepository _repository;

  SearchContactUsecase(this._repository);

  Future<Either<Failure, List<UserRestrictedModel>>> call(
      String surname) async {
    return await _repository.searchContacts(surname);
  }
}
