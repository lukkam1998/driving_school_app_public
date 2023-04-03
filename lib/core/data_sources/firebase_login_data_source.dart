import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:managing_driving_school_app/core/utils/firebase_exception_message_handler.dart';
import '../../generated/l10n.dart';
import '../app_models/user_models/user_model.dart';
import '../app_models/user_models/user_sign_in_data.dart';
import '../app_models/app_exceptions.dart';
import '../app_models/user_models/user_register_data.dart';

import '../app_models/success.dart';

abstract class FirebaseLoginDataSource {
  Future<Success> signUpUser(UserRegisterData userRegisterData);
  Future<UserModel> signInUser(UserSignInData userSignInData);
  Future<Success> signOut();
  Future<Success> signUpInstructor(UserRegisterData userRegisterData);
}

@LazySingleton(as: FirebaseLoginDataSource)
class FirebaseLoginDataSourceImpl extends FirebaseLoginDataSource {
  final FirebaseFirestore firebaseFirestore;
  final FirebaseAuth firebaseAuth;

  FirebaseLoginDataSourceImpl(
    this.firebaseFirestore,
    this.firebaseAuth,
  );

  @override
  Future<Success> signUpUser(UserRegisterData userRegisterData) async {
    try {
      final result = await firebaseAuth.createUserWithEmailAndPassword(
        email: userRegisterData.login,
        password: userRegisterData.password,
      );

      await firebaseFirestore.collection('users').doc(result.user?.uid).set({
        'userId': result.user?.uid,
        'email': userRegisterData.login,
        'userRole': 'default',
        'firstLogin': true
      });

      return Success();
    } on Exception catch (e) {
      final messageHandler = FirebaseExceptionMessageHandler();
      final message = messageHandler.getErrorMessage(e);

      throw AppFirebaseException(message);
    }
  }

  @override
  Future<UserModel> signInUser(
    UserSignInData userSignInData,
  ) async {
    try {
      final result = await firebaseAuth.signInWithEmailAndPassword(
        email: userSignInData.login,
        password: userSignInData.password,
      );
      if (result.user == null) {
        throw AppFirebaseException(S().wrong_credentials);
      }
      late UserModel? user;
      await firebaseFirestore
          .collection('users')
          .doc(result.user?.uid)
          .get()
          .then(
        (snapshot) {
          user = UserModel.fromJson(snapshot.data()!);
        },
      );
      if (user == null) {
        throw AppFirebaseException(
          S().account_doesnt_exist,
        );
      }
      return user!;
    } on Exception catch (e) {
      final messageHandler = FirebaseExceptionMessageHandler();
      final message = messageHandler.getErrorMessage(e);
      throw AppFirebaseException(message);
    }
  }

  @override
  Future<Success> signOut() async {
    await firebaseAuth.signOut();
    return Success();
  }

  @override
  Future<Success> signUpInstructor(UserRegisterData userRegisterData) async {
    try {
      final result = await firebaseAuth.createUserWithEmailAndPassword(
        email: userRegisterData.login,
        password: userRegisterData.password,
      );

      await firebaseFirestore.collection('users').doc(result.user?.uid).set({
        'userId': result.user?.uid,
        'email': userRegisterData.login,
        'userRole': 'tutor',
        'firstLogin': true
      });

      return Success();
    } on Exception catch (e) {
      final messageHandler = FirebaseExceptionMessageHandler();
      final message = messageHandler.getErrorMessage(e);
      throw AppFirebaseException(message);
    }
  }
}
