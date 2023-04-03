// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'contacts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContactsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadUserContacts,
    required TResult Function(String contactId) addContact,
    required TResult Function(String surname) searchContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadUserContacts,
    TResult? Function(String contactId)? addContact,
    TResult? Function(String surname)? searchContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadUserContacts,
    TResult Function(String contactId)? addContact,
    TResult Function(String surname)? searchContact,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUserContactsEvent value) loadUserContacts,
    required TResult Function(AddContactEvent value) addContact,
    required TResult Function(SearchContactEvent value) searchContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUserContactsEvent value)? loadUserContacts,
    TResult? Function(AddContactEvent value)? addContact,
    TResult? Function(SearchContactEvent value)? searchContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUserContactsEvent value)? loadUserContacts,
    TResult Function(AddContactEvent value)? addContact,
    TResult Function(SearchContactEvent value)? searchContact,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsEventCopyWith<$Res> {
  factory $ContactsEventCopyWith(
          ContactsEvent value, $Res Function(ContactsEvent) then) =
      _$ContactsEventCopyWithImpl<$Res, ContactsEvent>;
}

/// @nodoc
class _$ContactsEventCopyWithImpl<$Res, $Val extends ContactsEvent>
    implements $ContactsEventCopyWith<$Res> {
  _$ContactsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadUserContactsEventCopyWith<$Res> {
  factory _$$LoadUserContactsEventCopyWith(_$LoadUserContactsEvent value,
          $Res Function(_$LoadUserContactsEvent) then) =
      __$$LoadUserContactsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadUserContactsEventCopyWithImpl<$Res>
    extends _$ContactsEventCopyWithImpl<$Res, _$LoadUserContactsEvent>
    implements _$$LoadUserContactsEventCopyWith<$Res> {
  __$$LoadUserContactsEventCopyWithImpl(_$LoadUserContactsEvent _value,
      $Res Function(_$LoadUserContactsEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadUserContactsEvent implements LoadUserContactsEvent {
  const _$LoadUserContactsEvent();

  @override
  String toString() {
    return 'ContactsEvent.loadUserContacts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadUserContactsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadUserContacts,
    required TResult Function(String contactId) addContact,
    required TResult Function(String surname) searchContact,
  }) {
    return loadUserContacts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadUserContacts,
    TResult? Function(String contactId)? addContact,
    TResult? Function(String surname)? searchContact,
  }) {
    return loadUserContacts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadUserContacts,
    TResult Function(String contactId)? addContact,
    TResult Function(String surname)? searchContact,
    required TResult orElse(),
  }) {
    if (loadUserContacts != null) {
      return loadUserContacts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUserContactsEvent value) loadUserContacts,
    required TResult Function(AddContactEvent value) addContact,
    required TResult Function(SearchContactEvent value) searchContact,
  }) {
    return loadUserContacts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUserContactsEvent value)? loadUserContacts,
    TResult? Function(AddContactEvent value)? addContact,
    TResult? Function(SearchContactEvent value)? searchContact,
  }) {
    return loadUserContacts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUserContactsEvent value)? loadUserContacts,
    TResult Function(AddContactEvent value)? addContact,
    TResult Function(SearchContactEvent value)? searchContact,
    required TResult orElse(),
  }) {
    if (loadUserContacts != null) {
      return loadUserContacts(this);
    }
    return orElse();
  }
}

abstract class LoadUserContactsEvent implements ContactsEvent {
  const factory LoadUserContactsEvent() = _$LoadUserContactsEvent;
}

/// @nodoc
abstract class _$$AddContactEventCopyWith<$Res> {
  factory _$$AddContactEventCopyWith(
          _$AddContactEvent value, $Res Function(_$AddContactEvent) then) =
      __$$AddContactEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String contactId});
}

/// @nodoc
class __$$AddContactEventCopyWithImpl<$Res>
    extends _$ContactsEventCopyWithImpl<$Res, _$AddContactEvent>
    implements _$$AddContactEventCopyWith<$Res> {
  __$$AddContactEventCopyWithImpl(
      _$AddContactEvent _value, $Res Function(_$AddContactEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactId = null,
  }) {
    return _then(_$AddContactEvent(
      null == contactId
          ? _value.contactId
          : contactId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddContactEvent implements AddContactEvent {
  const _$AddContactEvent(this.contactId);

  @override
  final String contactId;

  @override
  String toString() {
    return 'ContactsEvent.addContact(contactId: $contactId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddContactEvent &&
            (identical(other.contactId, contactId) ||
                other.contactId == contactId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contactId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddContactEventCopyWith<_$AddContactEvent> get copyWith =>
      __$$AddContactEventCopyWithImpl<_$AddContactEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadUserContacts,
    required TResult Function(String contactId) addContact,
    required TResult Function(String surname) searchContact,
  }) {
    return addContact(contactId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadUserContacts,
    TResult? Function(String contactId)? addContact,
    TResult? Function(String surname)? searchContact,
  }) {
    return addContact?.call(contactId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadUserContacts,
    TResult Function(String contactId)? addContact,
    TResult Function(String surname)? searchContact,
    required TResult orElse(),
  }) {
    if (addContact != null) {
      return addContact(contactId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUserContactsEvent value) loadUserContacts,
    required TResult Function(AddContactEvent value) addContact,
    required TResult Function(SearchContactEvent value) searchContact,
  }) {
    return addContact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUserContactsEvent value)? loadUserContacts,
    TResult? Function(AddContactEvent value)? addContact,
    TResult? Function(SearchContactEvent value)? searchContact,
  }) {
    return addContact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUserContactsEvent value)? loadUserContacts,
    TResult Function(AddContactEvent value)? addContact,
    TResult Function(SearchContactEvent value)? searchContact,
    required TResult orElse(),
  }) {
    if (addContact != null) {
      return addContact(this);
    }
    return orElse();
  }
}

abstract class AddContactEvent implements ContactsEvent {
  const factory AddContactEvent(final String contactId) = _$AddContactEvent;

  String get contactId;
  @JsonKey(ignore: true)
  _$$AddContactEventCopyWith<_$AddContactEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchContactEventCopyWith<$Res> {
  factory _$$SearchContactEventCopyWith(_$SearchContactEvent value,
          $Res Function(_$SearchContactEvent) then) =
      __$$SearchContactEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String surname});
}

/// @nodoc
class __$$SearchContactEventCopyWithImpl<$Res>
    extends _$ContactsEventCopyWithImpl<$Res, _$SearchContactEvent>
    implements _$$SearchContactEventCopyWith<$Res> {
  __$$SearchContactEventCopyWithImpl(
      _$SearchContactEvent _value, $Res Function(_$SearchContactEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surname = null,
  }) {
    return _then(_$SearchContactEvent(
      null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchContactEvent implements SearchContactEvent {
  const _$SearchContactEvent(this.surname);

  @override
  final String surname;

  @override
  String toString() {
    return 'ContactsEvent.searchContact(surname: $surname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchContactEvent &&
            (identical(other.surname, surname) || other.surname == surname));
  }

  @override
  int get hashCode => Object.hash(runtimeType, surname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchContactEventCopyWith<_$SearchContactEvent> get copyWith =>
      __$$SearchContactEventCopyWithImpl<_$SearchContactEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadUserContacts,
    required TResult Function(String contactId) addContact,
    required TResult Function(String surname) searchContact,
  }) {
    return searchContact(surname);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadUserContacts,
    TResult? Function(String contactId)? addContact,
    TResult? Function(String surname)? searchContact,
  }) {
    return searchContact?.call(surname);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadUserContacts,
    TResult Function(String contactId)? addContact,
    TResult Function(String surname)? searchContact,
    required TResult orElse(),
  }) {
    if (searchContact != null) {
      return searchContact(surname);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUserContactsEvent value) loadUserContacts,
    required TResult Function(AddContactEvent value) addContact,
    required TResult Function(SearchContactEvent value) searchContact,
  }) {
    return searchContact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUserContactsEvent value)? loadUserContacts,
    TResult? Function(AddContactEvent value)? addContact,
    TResult? Function(SearchContactEvent value)? searchContact,
  }) {
    return searchContact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUserContactsEvent value)? loadUserContacts,
    TResult Function(AddContactEvent value)? addContact,
    TResult Function(SearchContactEvent value)? searchContact,
    required TResult orElse(),
  }) {
    if (searchContact != null) {
      return searchContact(this);
    }
    return orElse();
  }
}

abstract class SearchContactEvent implements ContactsEvent {
  const factory SearchContactEvent(final String surname) = _$SearchContactEvent;

  String get surname;
  @JsonKey(ignore: true)
  _$$SearchContactEventCopyWith<_$SearchContactEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContactsState {
  List<Contact> get contacts => throw _privateConstructorUsedError;
  List<UserRestrictedModel> get foundUsers =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get doesAddingContactSucced => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContactsStateCopyWith<ContactsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsStateCopyWith<$Res> {
  factory $ContactsStateCopyWith(
          ContactsState value, $Res Function(ContactsState) then) =
      _$ContactsStateCopyWithImpl<$Res, ContactsState>;
  @useResult
  $Res call(
      {List<Contact> contacts,
      List<UserRestrictedModel> foundUsers,
      bool isLoading,
      bool hasError,
      bool doesAddingContactSucced});
}

/// @nodoc
class _$ContactsStateCopyWithImpl<$Res, $Val extends ContactsState>
    implements $ContactsStateCopyWith<$Res> {
  _$ContactsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacts = null,
    Object? foundUsers = null,
    Object? isLoading = null,
    Object? hasError = null,
    Object? doesAddingContactSucced = null,
  }) {
    return _then(_value.copyWith(
      contacts: null == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
      foundUsers: null == foundUsers
          ? _value.foundUsers
          : foundUsers // ignore: cast_nullable_to_non_nullable
              as List<UserRestrictedModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      doesAddingContactSucced: null == doesAddingContactSucced
          ? _value.doesAddingContactSucced
          : doesAddingContactSucced // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $ContactsStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Contact> contacts,
      List<UserRestrictedModel> foundUsers,
      bool isLoading,
      bool hasError,
      bool doesAddingContactSucced});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ContactsStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacts = null,
    Object? foundUsers = null,
    Object? isLoading = null,
    Object? hasError = null,
    Object? doesAddingContactSucced = null,
  }) {
    return _then(_$_Initial(
      contacts: null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
      foundUsers: null == foundUsers
          ? _value._foundUsers
          : foundUsers // ignore: cast_nullable_to_non_nullable
              as List<UserRestrictedModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      doesAddingContactSucced: null == doesAddingContactSucced
          ? _value.doesAddingContactSucced
          : doesAddingContactSucced // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required final List<Contact> contacts,
      required final List<UserRestrictedModel> foundUsers,
      required this.isLoading,
      required this.hasError,
      required this.doesAddingContactSucced})
      : _contacts = contacts,
        _foundUsers = foundUsers;

  final List<Contact> _contacts;
  @override
  List<Contact> get contacts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  final List<UserRestrictedModel> _foundUsers;
  @override
  List<UserRestrictedModel> get foundUsers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_foundUsers);
  }

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final bool doesAddingContactSucced;

  @override
  String toString() {
    return 'ContactsState(contacts: $contacts, foundUsers: $foundUsers, isLoading: $isLoading, hasError: $hasError, doesAddingContactSucced: $doesAddingContactSucced)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other._contacts, _contacts) &&
            const DeepCollectionEquality()
                .equals(other._foundUsers, _foundUsers) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(
                    other.doesAddingContactSucced, doesAddingContactSucced) ||
                other.doesAddingContactSucced == doesAddingContactSucced));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_contacts),
      const DeepCollectionEquality().hash(_foundUsers),
      isLoading,
      hasError,
      doesAddingContactSucced);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements ContactsState {
  const factory _Initial(
      {required final List<Contact> contacts,
      required final List<UserRestrictedModel> foundUsers,
      required final bool isLoading,
      required final bool hasError,
      required final bool doesAddingContactSucced}) = _$_Initial;

  @override
  List<Contact> get contacts;
  @override
  List<UserRestrictedModel> get foundUsers;
  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  bool get doesAddingContactSucced;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
