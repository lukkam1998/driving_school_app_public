import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import '../../../../../core/app_models/messages/contact.dart';
import '../../../../../core/app_models/user_models/user_restricted_model.dart';

import '../../../../../core/app_models/failure.dart';
import '../../../../../core/app_models/success.dart';

abstract class MessagesRepository {
  Future<Either<Failure, List<Contact>>> getUserContacts();
  Either<Failure, Stream<QuerySnapshot<Map<String, dynamic>>>?> connectWithChat(
    String chatId,
  );

  Future<Either<Failure, Success>> sendMessage(String message, String chatId);
  Future<Either<Failure, Success>> createChatWithUser(String userId);

  Future<Either<Failure, List<UserRestrictedModel>>> searchContacts(
    String surname,
  );
}
