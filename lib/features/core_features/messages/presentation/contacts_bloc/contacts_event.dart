part of 'contacts_bloc.dart';

@freezed
class ContactsEvent with _$ContactsEvent {
  const factory ContactsEvent.loadUserContacts() = LoadUserContactsEvent;
  const factory ContactsEvent.addContact(String contactId) = AddContactEvent;
  const factory ContactsEvent.searchContact(String surname) =
      SearchContactEvent;
}
