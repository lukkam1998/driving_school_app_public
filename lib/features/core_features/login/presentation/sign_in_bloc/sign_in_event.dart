part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.signUpUser(
    UserSignInData userSignInData,
  ) = SignInUserEvent;
  const factory SignInEvent.signOut() = SignOutUserEvent;
  const factory SignInEvent.singedUp() = UserSignedUpEvent;
  const factory SignInEvent.signedOut() = UserSignedOutEvent;
}
