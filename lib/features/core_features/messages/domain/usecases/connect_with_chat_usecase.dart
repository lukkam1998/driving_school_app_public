import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../repository/messages_repository.dart';

import '../../../../../core/app_models/failure.dart';

@lazySingleton
class ConnectWithChatUsecase {
  final MessagesRepository _repository;

  ConnectWithChatUsecase(this._repository);
  Either<Failure, Stream<QuerySnapshot<Map<String, dynamic>>>?> call(
    String chatId,
  ) {
    return _repository.connectWithChat(chatId);
  }
}
