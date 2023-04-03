import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

abstract class Failure {
  final String errorMessage;
  Failure(this.errorMessage);
}

@freezed
class AppFailures extends Failure with _$AppFailures {
  const factory AppFailures.firebaseFailure(String errorMessage) =
      _FirebaseFailure;
  const factory AppFailures.firebaseFailureNoErrorMessage(String errorMessage) =
      _FirebaseFailureNoErrorMessage;
  const factory AppFailures.noContactsFailure(String errorMessage) =
      _NoContactsFailure;
  const factory AppFailures.chatAlreadyCreatedFailure(String errorMessage) =
      _ChatAlreadyCreatedFailure;
  const factory AppFailures.cannotStartLesson(String errorMessage) =
      _CannotStartLesson;
}
