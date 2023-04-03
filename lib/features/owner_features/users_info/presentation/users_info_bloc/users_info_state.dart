part of 'users_info_bloc.dart';

@freezed
class UsersInfoState with _$UsersInfoState {
  const factory UsersInfoState({
    required List<UserModel> usersInfo,
    required bool isLoading,
    required bool hasError,
  }) = _Initial;

  factory UsersInfoState.initial() => const UsersInfoState(
        usersInfo: [],
        isLoading: false,
        hasError: false,
      );
}
