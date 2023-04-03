import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/app_models/messages/contact.dart';
import '../repository/messages_repository.dart';

import '../../../../../core/app_models/failure.dart';

@lazySingleton
class LoadUserContactsUsecase {
  final MessagesRepository _repository;

  LoadUserContactsUsecase(this._repository);

  Future<Either<Failure, List<Contact>>> call() async {
    return await _repository.getUserContacts();
  }
}
