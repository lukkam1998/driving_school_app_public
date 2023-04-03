import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/app_models/app_exceptions.dart';
import '../../../../../core/app_models/messages/contact.dart';
import '../../../../../core/app_models/messages/message.dart';
import '../../../../../core/app_models/messages/message_to_send.dart';
import '../../../../../core/app_models/success.dart';
import '../../../../../core/app_models/user_models/user_restricted_model.dart';
import '../../../../../core/data_sources/firebase_messages_data_source.dart';
import '../../../../../core/services/user_data_service/user_data_service.dart';
import '../../domain/repository/messages_repository.dart';

import '../../../../../core/app_models/failure.dart';

@LazySingleton(as: MessagesRepository)
class MessagesRepositoryImpl extends MessagesRepository {
  final FirebaseMessagesDataSource _firebaseMessagesDataSource;
  final UserDataService _userDataService;

  MessagesRepositoryImpl(
    this._firebaseMessagesDataSource,
    this._userDataService,
  );

  @override
  Future<Either<Failure, List<Contact>>> getUserContacts() async {
    final userChats = await _firebaseMessagesDataSource
        .getUserChats(_userDataService.getUserId());

    return userChats.fold(
      (emptyChats) {
        return const Right([]); // return empty list no contacts
      },
      (chats) async {
        final List<Contact> contactsList = [];
        for (var chat in chats) {
          final UserRestrictedModel contact =
              await _firebaseMessagesDataSource.getUserContactsData(
            chat,
            _userDataService.getUserId(),
          );
          Message? lastMessage;

          try {
            lastMessage =
                await _firebaseMessagesDataSource.getLastMessageFromChat(chat);
          } on NoMessagesException catch (_) {
            lastMessage = null;
          }

          final int unreadMessagesCount =
              await _firebaseMessagesDataSource.getUnreadMessagesCount(chat);
          contactsList.add(
            Contact(
              chatId: chat,
              contactData: contact,
              lastMessage: lastMessage,
              messageCount: unreadMessagesCount,
            ),
          );
        }
        return Right(contactsList);
      },
    );
  }

  @override
  Either<Failure, Stream<QuerySnapshot<Map<String, dynamic>>>?> connectWithChat(
    String chatId,
  ) {
    try {
      return Right(_firebaseMessagesDataSource.connectWithChat(chatId));
    } on Exception catch (_) {
      return const Left(AppFailures.firebaseFailure(''));
    }
  }

  @override
  Future<Either<Failure, Success>> sendMessage(
    String message,
    String chatId,
  ) async {
    try {
      final messageToSend = MessageToSend(
        messageBody: message,
        senderId: _userDataService.getUserId(),
        timestamp: Timestamp.now(),
      );
      return Right(
        await _firebaseMessagesDataSource.sendMessage(messageToSend, chatId),
      );
    } on Exception catch (_) {
      return const Left(AppFailures.firebaseFailure(''));
    }
  }

  @override
  Future<Either<Failure, Success>> createChatWithUser(String userId) async {
    final id = _userDataService.getUserId();
    return Right(
      await _firebaseMessagesDataSource.createChatWithUser(id, userId),
    );
  }

  @override
  Future<Either<Failure, List<UserRestrictedModel>>> searchContacts(
    String surname,
  ) async {
    final userId = _userDataService.getUserData();
    return Right(await _firebaseMessagesDataSource.searchContacts(
      surname,
      userId,
    ));
  }
}
