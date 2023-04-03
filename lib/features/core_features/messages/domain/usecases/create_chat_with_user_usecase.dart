import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/app_models/success.dart';
import '../repository/messages_repository.dart';

import '../../../../../core/app_models/failure.dart';

@lazySingleton
class CreateChatWithUserUsecase {
  final MessagesRepository _messagesRepository;

  CreateChatWithUserUsecase(this._messagesRepository);

  Future<Either<Failure, Success>> call(String userId) async {
    return await _messagesRepository.createChatWithUser(userId);
  }
}
