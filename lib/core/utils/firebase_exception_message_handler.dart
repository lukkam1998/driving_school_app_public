import 'package:firebase_auth/firebase_auth.dart';
import 'package:managing_driving_school_app/generated/l10n.dart';

class FirebaseExceptionMessageHandler {
  final S _strings = S();

  String getErrorMessage(Exception exception) {
    if (exception is FirebaseException) {
      final exceptionCode = exception.code;
      if (exceptionCode.contains('email-already-in-use')) {
        return _strings.email_already_in_use;
      }
      if (exceptionCode.contains('invalid-email')) {
        return _strings.invalid_email;
      }

      if (exceptionCode.contains('weak-password')) {
        return _strings.weak_password;
      }

      if (exceptionCode.contains('wrong-password')) {
        return _strings.wrong_password;
      }

      if (exceptionCode.contains('invalid-credentials')) {
        return _strings.invalid_credentials;
      }
      if (exceptionCode.contains('user-not-found')) {
        return _strings.invalid_credentials;
      }
    } else if (exception is FirebaseAuthException) {
      final exceptionCode = exception.code;
      if (exceptionCode.contains('email-already-in-use')) {
        return _strings.email_already_in_use;
      }
      if (exceptionCode.contains('invalid-email')) {
        return _strings.invalid_email;
      }

      if (exceptionCode.contains('weak-password')) {
        return _strings.weak_password;
      }

      if (exceptionCode.contains('wrong-password')) {
        return _strings.wrong_password;
      }

      if (exceptionCode.contains('invalid-credentials')) {
        return _strings.invalid_credentials;
      }

      if (exceptionCode.contains('user-not-found')) {
        return _strings.invalid_credentials;
      }
    }
    return '';
  }
}
