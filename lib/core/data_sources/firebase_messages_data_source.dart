import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../app_models/app_exceptions.dart';
import '../app_models/messages/message.dart';
import '../app_models/messages/message_to_send.dart';
import '../app_models/success.dart';
import '../app_models/user_models/user_model.dart';
import '../app_models/user_models/user_restricted_model.dart';

import '../app_models/failure.dart';
import '../app_models/messages/chat.dart';

abstract class FirebaseMessagesDataSource {
  Future<Message?> getLastMessageFromChat(String chatId);
  Future<Success> createChatWithUser(String tutorId, String userId);
  Future<Either<Failure, List<String>>> getUserChats(String userId);
  Future<UserRestrictedModel> getUserContactsData(
    String chatId,
    String userId,
  );

  Future<int> getUnreadMessagesCount(String chatId);
  Stream<QuerySnapshot<Map<String, dynamic>>>? connectWithChat(String chatId);

  Future<Success> sendMessage(MessageToSend message, String chatId);

  Future<List<UserRestrictedModel>> searchContacts(
    String surname,
    UserModel user,
  );
}

@LazySingleton(as: FirebaseMessagesDataSource)
class FirebaseMessagesDataSourceImpl extends FirebaseMessagesDataSource {
  final FirebaseFirestore _firebaseFirestore;

  FirebaseMessagesDataSourceImpl(this._firebaseFirestore);

  @override
  Future<Message?> getLastMessageFromChat(String chatId) async {
    final lastmessage = await _firebaseFirestore
        .collection('chats')
        .doc(chatId)
        .collection('messages')
        .orderBy('timestamp', descending: true)
        .limit(1)
        .get()
        .then(
      (value) {
        if (value.docs.isEmpty) {
          throw NoMessagesException();
        }
        return value.docs.map(
          (message) => Message.fromJson(
            message.data(),
          ),
        );
      },
    );
    return lastmessage.first;
  }

  @override
  Future<Success> createChatWithUser(String tutorId, String userId) async {
    // Create chat group
    Chat chat = const Chat(
      chatName: 'Default',
    );
    final doesChatExists = await _checkIfChatBetweenUsersExist(tutorId, userId);
    if (doesChatExists) {
      throw AppFirebaseException('Chat already created');
    }

    final chatData =
        await _firebaseFirestore.collection('chats').add(chat.toJson());
    final userRef = _firebaseFirestore.collection('users').doc(userId);
    final tutorRef = _firebaseFirestore.collection('users').doc(tutorId);

    userRef.set(
      {
        'chats': FieldValue.arrayUnion([chatData.id]),
      },
      SetOptions(merge: true),
    );

    tutorRef.set(
      {
        'chats': FieldValue.arrayUnion([chatData.id]),
      },
      SetOptions(merge: true),
    );

    return Success();
  }

  @override
  Future<Either<Failure, List<String>>> getUserChats(String userId) async {
    final chats = await _firebaseFirestore
        .collection('users')
        .doc(userId)
        .get()
        .then((userData) {
      return UserModel.fromJson(userData.data()!).chats;
    });

    if (chats != null) {
      if (chats.isNotEmpty) {
        return Right(chats);
      } else {
        return const Left(AppFailures.firebaseFailure('no chats'));
      }
    } else {
      return const Left(AppFailures.firebaseFailure('no chats'));
    }
  }

  @override
  Future<UserRestrictedModel> getUserContactsData(
    String chatId,
    String userId,
  ) async {
    final contact = await _firebaseFirestore
        .collection('users')
        .where('chats', arrayContains: chatId)
        .where(
          'userId',
          isNotEqualTo: userId,
        ) // skip user cause he's also in this chat
        .get()
        .then(
          (value) => value.docs.map((e) {
            return UserRestrictedModel.fromJson(
              e.data(),
            );
          }).toList(),
        );

    return contact.first;
  }

  @override
  Future<int> getUnreadMessagesCount(String chatId) async {
    final count = await _firebaseFirestore
        .collection('chats')
        .doc(chatId)
        .collection('messages')
        .where('wasRead', isEqualTo: false)
        .count()
        .get();
    return count.count;
  }

  @override
  Stream<QuerySnapshot<Map<String, dynamic>>>? connectWithChat(String chatId) {
    return _firebaseFirestore
        .collection('chats')
        .doc(chatId)
        .collection('messages')
        .orderBy(
          'timestamp',
          descending: true,
        )
        .snapshots();
  }

  @override
  Future<Success> sendMessage(
    MessageToSend message,
    String chatId,
  ) async {
    await _firebaseFirestore
        .collection('chats')
        .doc(chatId)
        .collection('messages')
        .add(message.toJson());

    return Success();
  }

  @override
  Future<List<UserRestrictedModel>> searchContacts(
    String surname,
    UserModel user,
  ) async {
    final list = await _firebaseFirestore
        .collection('users')
        .where('surname', isGreaterThanOrEqualTo: surname)
        .where('surname', isLessThanOrEqualTo: '$surname\uf7ff')
        .get()
        .then(
          (snapshot) => snapshot.docs.map((user) {
            return UserRestrictedModel.fromJson(user.data());
          }).toList(),
        );
    final clearedList = removeUsersWithChatAlreadyCreated(list, user);
    return clearedList;
  }

  Future<bool> _checkIfChatBetweenUsersExist(
    String firstId,
    String secondId,
  ) async {
    final firstUserData =
        await _firebaseFirestore.collection('users').doc(firstId).get().then(
              (value) => UserModel.fromJson(
                value.data()!,
              ),
            );
    final secondUserData =
        await _firebaseFirestore.collection('users').doc(secondId).get().then(
              (value) => UserModel.fromJson(
                value.data()!,
              ),
            );
    if (firstUserData.chats == null || secondUserData.chats == null) {
      return false;
    }
    if (firstUserData.chats!.isEmpty || secondUserData.chats!.isEmpty) {
      return false;
    }
    for (int i = 0; i < firstUserData.chats!.length; i++) {
      if (secondUserData.chats!.contains(firstUserData.chats![i])) {
        return true;
      }
    }
    return false;
  }

  Future<List<UserRestrictedModel>> removeUsersWithChatAlreadyCreated(
    List<UserRestrictedModel> list,
    UserModel user,
  ) async {
    final copiedList = [...list];
    final updatedUserData = await _firebaseFirestore
        .collection('users')
        .doc(user.userId)
        .get()
        .then(
          (value) => UserModel.fromJson(
            value.data()!,
          ),
        );

    if (updatedUserData.chats == null) {
      return copiedList;
    }
    if (updatedUserData.chats!.isEmpty) {
      return copiedList;
    }
    List<UserRestrictedModel> usersToDelete = [];
    for (int i = 0; i < copiedList.length; i++) {
      if (copiedList[i].chats == null) {
        continue;
      }
      if (copiedList[i].chats!.isEmpty) {
        continue;
      }
      for (int j = 0; j < copiedList[i].chats!.length; j++) {
        if (updatedUserData.chats!.contains(copiedList[i].chats![j])) {
          usersToDelete.add(copiedList[i]);
          break;
        }
      }
    }
    copiedList.removeWhere((element) {
      for (int i = 0; i < usersToDelete.length; i++) {
        if (element.userId == usersToDelete[i].userId) {
          return true;
        }
      }
      return false;
    });
    return copiedList;
  }
}
