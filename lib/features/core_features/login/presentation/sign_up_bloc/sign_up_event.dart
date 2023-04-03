part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.signUpUser(
    UserRegisterData userRegisterData,
  ) = SignUpUserEvent;

  const factory SignUpEvent.signUpInsturctor(
    UserRegisterData userRegisterData,
  ) = SignUpInstructorEvent;
}
