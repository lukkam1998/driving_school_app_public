part of 'user_details_bloc.dart';

@freezed
class UserDetailsEvent with _$UserDetailsEvent {
  const factory UserDetailsEvent.getUserDetails({
    required String userId,
    required bool isTutor,
  }) = GetUserDetailsEvent;
}
