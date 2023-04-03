class AppFirebaseException implements Exception {
  final String message;

  AppFirebaseException(this.message);
}

class NoMessagesException implements Exception {}

class PermissionDeniedForeverException implements Exception {}
