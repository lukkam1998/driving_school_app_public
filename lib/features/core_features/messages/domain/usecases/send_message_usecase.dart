import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/app_models/success.dart';
import '../repository/messages_repository.dart';

import '../../../../../core/app_models/failure.dart';

@lazySingleton
class SendMessageUsecase {
  final MessagesRepository _repository;

  SendMessageUsecase(this._repository);

  Future<Either<Failure, Success>> call(
    String message,
    String chatId,
  ) async {
    return await _repository.sendMessage(message, chatId);
  }
}
