part of 'first_login_bloc.dart';

@freezed
class FirstLoginEvent with _$FirstLoginEvent {
  const factory FirstLoginEvent.addPhoto(File file) = PickPhotoEvent;
  const factory FirstLoginEvent.updateUser({
    required String name,
    required String surname,
    required DateTime userBirthDate,
  }) = UpdateUserDataEvent;
}
