import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/usecases/create_chat_with_user_usecase.dart';
import '../../domain/usecases/load_user_contacts_usecase.dart';
import '../../domain/usecases/search_contact_usecase.dart';

import '../../../../../core/app_models/messages/contact.dart';
import '../../../../../core/app_models/user_models/user_restricted_model.dart';

part 'contacts_event.dart';
part 'contacts_state.dart';
part 'contacts_bloc.freezed.dart';

@injectable
@lazySingleton
class ContactsBloc extends Bloc<ContactsEvent, ContactsState> {
  final LoadUserContactsUsecase _loadUserContactsUsecase;
  final SearchContactUsecase _searchContactUsecase;
  final CreateChatWithUserUsecase _createChatWithUserUsecase;
  ContactsBloc(
    this._loadUserContactsUsecase,
    this._searchContactUsecase,
    this._createChatWithUserUsecase,
  ) : super(ContactsState.initial()) {
    on<LoadUserContactsEvent>(_loadUserContacts);
    on<SearchContactEvent>(_searchContact);
    on<AddContactEvent>(_addContact);
  }

  void _addContact(
    AddContactEvent event,
    Emitter<ContactsState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final result = await _createChatWithUserUsecase(event.contactId);
    result.fold(
      (failure) => null,
      (success) => emit(
        state.copyWith(
          isLoading: false,
          doesAddingContactSucced: true,
        ),
      ),
    );
  }

  void _searchContact(
    SearchContactEvent event,
    Emitter<ContactsState> emit,
  ) async {
    emit(state.copyWith(
      isLoading: true,
      doesAddingContactSucced: false,
    ));
    final result = await _searchContactUsecase(event.surname);
    result.fold(
      (failure) => null,
      (users) => emit(
        state.copyWith(
          isLoading: false,
          foundUsers: users,
        ),
      ),
    );
  }

  Future<void> _loadUserContacts(
    LoadUserContactsEvent event,
    Emitter<ContactsState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final result = await _loadUserContactsUsecase();
    result.fold(
      (failure) => emit(state.copyWith(hasError: true, isLoading: false)),
      (contacts) => emit(
        state.copyWith(
          hasError: false,
          isLoading: false,
          contacts: contacts,
        ),
      ),
    );
  }
}
