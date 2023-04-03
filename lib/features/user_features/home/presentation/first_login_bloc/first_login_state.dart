part of 'first_login_bloc.dart';

@freezed
class FirstLoginState with _$FirstLoginState {
  const factory FirstLoginState({
    required bool isLoading,
    required UserModel userModel,
    required bool hasError,
    required bool isUpdated,
    File? photo,
  }) = _Initial;

  factory FirstLoginState.initial() => FirstLoginState(
        isLoading: false,
        userModel: sl<UserDataService>().authStream.value,
        hasError: false,
        isUpdated: false,
      );
}
