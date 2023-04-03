// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'messages_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MessagesEvent {
  String get chatId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatId) connectWithChat,
    required TResult Function(String message, String chatId) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId)? connectWithChat,
    TResult? Function(String message, String chatId)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId)? connectWithChat,
    TResult Function(String message, String chatId)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectWithChatEvent value) connectWithChat,
    required TResult Function(SendMessageEvent value) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectWithChatEvent value)? connectWithChat,
    TResult? Function(SendMessageEvent value)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectWithChatEvent value)? connectWithChat,
    TResult Function(SendMessageEvent value)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessagesEventCopyWith<MessagesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagesEventCopyWith<$Res> {
  factory $MessagesEventCopyWith(
          MessagesEvent value, $Res Function(MessagesEvent) then) =
      _$MessagesEventCopyWithImpl<$Res, MessagesEvent>;
  @useResult
  $Res call({String chatId});
}

/// @nodoc
class _$MessagesEventCopyWithImpl<$Res, $Val extends MessagesEvent>
    implements $MessagesEventCopyWith<$Res> {
  _$MessagesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
  }) {
    return _then(_value.copyWith(
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConnectWithChatEventCopyWith<$Res>
    implements $MessagesEventCopyWith<$Res> {
  factory _$$ConnectWithChatEventCopyWith(_$ConnectWithChatEvent value,
          $Res Function(_$ConnectWithChatEvent) then) =
      __$$ConnectWithChatEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String chatId});
}

/// @nodoc
class __$$ConnectWithChatEventCopyWithImpl<$Res>
    extends _$MessagesEventCopyWithImpl<$Res, _$ConnectWithChatEvent>
    implements _$$ConnectWithChatEventCopyWith<$Res> {
  __$$ConnectWithChatEventCopyWithImpl(_$ConnectWithChatEvent _value,
      $Res Function(_$ConnectWithChatEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
  }) {
    return _then(_$ConnectWithChatEvent(
      null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConnectWithChatEvent implements ConnectWithChatEvent {
  const _$ConnectWithChatEvent(this.chatId);

  @override
  final String chatId;

  @override
  String toString() {
    return 'MessagesEvent.connectWithChat(chatId: $chatId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectWithChatEvent &&
            (identical(other.chatId, chatId) || other.chatId == chatId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectWithChatEventCopyWith<_$ConnectWithChatEvent> get copyWith =>
      __$$ConnectWithChatEventCopyWithImpl<_$ConnectWithChatEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatId) connectWithChat,
    required TResult Function(String message, String chatId) sendMessage,
  }) {
    return connectWithChat(chatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId)? connectWithChat,
    TResult? Function(String message, String chatId)? sendMessage,
  }) {
    return connectWithChat?.call(chatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId)? connectWithChat,
    TResult Function(String message, String chatId)? sendMessage,
    required TResult orElse(),
  }) {
    if (connectWithChat != null) {
      return connectWithChat(chatId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectWithChatEvent value) connectWithChat,
    required TResult Function(SendMessageEvent value) sendMessage,
  }) {
    return connectWithChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectWithChatEvent value)? connectWithChat,
    TResult? Function(SendMessageEvent value)? sendMessage,
  }) {
    return connectWithChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectWithChatEvent value)? connectWithChat,
    TResult Function(SendMessageEvent value)? sendMessage,
    required TResult orElse(),
  }) {
    if (connectWithChat != null) {
      return connectWithChat(this);
    }
    return orElse();
  }
}

abstract class ConnectWithChatEvent implements MessagesEvent {
  const factory ConnectWithChatEvent(final String chatId) =
      _$ConnectWithChatEvent;

  @override
  String get chatId;
  @override
  @JsonKey(ignore: true)
  _$$ConnectWithChatEventCopyWith<_$ConnectWithChatEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendMessageEventCopyWith<$Res>
    implements $MessagesEventCopyWith<$Res> {
  factory _$$SendMessageEventCopyWith(
          _$SendMessageEvent value, $Res Function(_$SendMessageEvent) then) =
      __$$SendMessageEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String chatId});
}

/// @nodoc
class __$$SendMessageEventCopyWithImpl<$Res>
    extends _$MessagesEventCopyWithImpl<$Res, _$SendMessageEvent>
    implements _$$SendMessageEventCopyWith<$Res> {
  __$$SendMessageEventCopyWithImpl(
      _$SendMessageEvent _value, $Res Function(_$SendMessageEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? chatId = null,
  }) {
    return _then(_$SendMessageEvent(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendMessageEvent implements SendMessageEvent {
  const _$SendMessageEvent(this.message, this.chatId);

  @override
  final String message;
  @override
  final String chatId;

  @override
  String toString() {
    return 'MessagesEvent.sendMessage(message: $message, chatId: $chatId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageEvent &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.chatId, chatId) || other.chatId == chatId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, chatId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageEventCopyWith<_$SendMessageEvent> get copyWith =>
      __$$SendMessageEventCopyWithImpl<_$SendMessageEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatId) connectWithChat,
    required TResult Function(String message, String chatId) sendMessage,
  }) {
    return sendMessage(message, chatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId)? connectWithChat,
    TResult? Function(String message, String chatId)? sendMessage,
  }) {
    return sendMessage?.call(message, chatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId)? connectWithChat,
    TResult Function(String message, String chatId)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(message, chatId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectWithChatEvent value) connectWithChat,
    required TResult Function(SendMessageEvent value) sendMessage,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectWithChatEvent value)? connectWithChat,
    TResult? Function(SendMessageEvent value)? sendMessage,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectWithChatEvent value)? connectWithChat,
    TResult Function(SendMessageEvent value)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class SendMessageEvent implements MessagesEvent {
  const factory SendMessageEvent(final String message, final String chatId) =
      _$SendMessageEvent;

  String get message;
  @override
  String get chatId;
  @override
  @JsonKey(ignore: true)
  _$$SendMessageEventCopyWith<_$SendMessageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MessagesState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  Stream<QuerySnapshot<Map<String, dynamic>>>? get chatStream =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessagesStateCopyWith<MessagesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagesStateCopyWith<$Res> {
  factory $MessagesStateCopyWith(
          MessagesState value, $Res Function(MessagesState) then) =
      _$MessagesStateCopyWithImpl<$Res, MessagesState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      Stream<QuerySnapshot<Map<String, dynamic>>>? chatStream});
}

/// @nodoc
class _$MessagesStateCopyWithImpl<$Res, $Val extends MessagesState>
    implements $MessagesStateCopyWith<$Res> {
  _$MessagesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? chatStream = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      chatStream: freezed == chatStream
          ? _value.chatStream
          : chatStream // ignore: cast_nullable_to_non_nullable
              as Stream<QuerySnapshot<Map<String, dynamic>>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $MessagesStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      Stream<QuerySnapshot<Map<String, dynamic>>>? chatStream});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$MessagesStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? chatStream = freezed,
  }) {
    return _then(_$_Initial(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      chatStream: freezed == chatStream
          ? _value.chatStream
          : chatStream // ignore: cast_nullable_to_non_nullable
              as Stream<QuerySnapshot<Map<String, dynamic>>>?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.isLoading,
      required this.hasError,
      required this.chatStream});

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final Stream<QuerySnapshot<Map<String, dynamic>>>? chatStream;

  @override
  String toString() {
    return 'MessagesState(isLoading: $isLoading, hasError: $hasError, chatStream: $chatStream)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.chatStream, chatStream) ||
                other.chatStream == chatStream));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, hasError, chatStream);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements MessagesState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool hasError,
      required final Stream<QuerySnapshot<Map<String, dynamic>>>?
          chatStream}) = _$_Initial;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  Stream<QuerySnapshot<Map<String, dynamic>>>? get chatStream;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
