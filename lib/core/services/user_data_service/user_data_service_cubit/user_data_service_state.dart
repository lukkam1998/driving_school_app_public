part of 'user_data_service_cubit.dart';

@freezed
class UserDataServiceState with _$UserDataServiceState {
  const factory UserDataServiceState.initial(
    bool isLoading,
    UserModel? userData,
  ) = _Initial;
}
