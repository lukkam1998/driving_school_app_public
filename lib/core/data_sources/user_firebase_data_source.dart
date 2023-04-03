import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import '../app_models/app_exceptions.dart';
import '../app_models/user_models/user_model.dart';

import '../app_models/user_models/user_restricted_model.dart';

abstract class UserFirebaseDataSource {
  Future<UserModel> updateUserData(UserModel userData, File? file);
  Future<UserRestrictedModel> getUserData(String userId);
}

@LazySingleton(as: UserFirebaseDataSource)
class UserFirebaseDataSourceImpl extends UserFirebaseDataSource {
  final FirebaseFirestore _firebaseFirestore;
  final FirebaseStorage _firebaseStorage;

  UserFirebaseDataSourceImpl(this._firebaseFirestore, this._firebaseStorage);
  @override
  Future<UserModel> updateUserData(UserModel userData, File? file) async {
    try {
      UserModel user = userData.copyWith();
      final String? imagePath;
      if (file != null) {
        final ref = _firebaseStorage
            .ref()
            .child('user_images')
            .child('${userData.userId}.jpg');
        await ref.putFile(file);
        imagePath = await ref.getDownloadURL();
        user = user.copyWith(imagePath: imagePath);
      }
      user = user.copyWith(firstLogin: false);
      await _firebaseFirestore
          .collection('users')
          .doc(
            user.userId,
          )
          .set(
            user.toJson(),
          );
      return user;
    } on Exception catch (_) {
      throw AppFirebaseException('');
    }
  }

  @override
  Future<UserRestrictedModel> getUserData(String userId) async {
    try {
      UserRestrictedModel user = await _firebaseFirestore
          .collection('users')
          .doc(
            userId,
          )
          .get()
          .then(
            (snapshot) => UserRestrictedModel.fromJson(
              snapshot.data()!,
            ),
          );
      return user;
    } on Exception catch (_) {
      throw AppFirebaseException('');
    }
  }
}
