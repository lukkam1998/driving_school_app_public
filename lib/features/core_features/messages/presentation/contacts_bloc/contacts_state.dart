part of 'contacts_bloc.dart';

@freezed
class ContactsState with _$ContactsState {
  const factory ContactsState({
    required List<Contact> contacts,
    required List<UserRestrictedModel> foundUsers,
    required bool isLoading,
    required bool hasError,
    required bool doesAddingContactSucced,
  }) = _Initial;

  factory ContactsState.initial() => const ContactsState(
        contacts: [],
        isLoading: false,
        hasError: false,
        doesAddingContactSucced: false,
        foundUsers: [],
      );
}
