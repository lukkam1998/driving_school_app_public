part of 'users_info_bloc.dart';

@freezed
class UsersInfoEvent with _$UsersInfoEvent {
  const factory UsersInfoEvent.getUsersInfo({
    required bool isInstructorsPreview,
  }) = GetUsersInfoEvent;
}
