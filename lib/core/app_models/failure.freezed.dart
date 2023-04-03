// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppFailures {
  String get errorMessage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) firebaseFailure,
    required TResult Function(String errorMessage)
        firebaseFailureNoErrorMessage,
    required TResult Function(String errorMessage) noContactsFailure,
    required TResult Function(String errorMessage) chatAlreadyCreatedFailure,
    required TResult Function(String errorMessage) cannotStartLesson,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMessage)? firebaseFailure,
    TResult? Function(String errorMessage)? firebaseFailureNoErrorMessage,
    TResult? Function(String errorMessage)? noContactsFailure,
    TResult? Function(String errorMessage)? chatAlreadyCreatedFailure,
    TResult? Function(String errorMessage)? cannotStartLesson,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? firebaseFailure,
    TResult Function(String errorMessage)? firebaseFailureNoErrorMessage,
    TResult Function(String errorMessage)? noContactsFailure,
    TResult Function(String errorMessage)? chatAlreadyCreatedFailure,
    TResult Function(String errorMessage)? cannotStartLesson,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirebaseFailure value) firebaseFailure,
    required TResult Function(_FirebaseFailureNoErrorMessage value)
        firebaseFailureNoErrorMessage,
    required TResult Function(_NoContactsFailure value) noContactsFailure,
    required TResult Function(_ChatAlreadyCreatedFailure value)
        chatAlreadyCreatedFailure,
    required TResult Function(_CannotStartLesson value) cannotStartLesson,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirebaseFailure value)? firebaseFailure,
    TResult? Function(_FirebaseFailureNoErrorMessage value)?
        firebaseFailureNoErrorMessage,
    TResult? Function(_NoContactsFailure value)? noContactsFailure,
    TResult? Function(_ChatAlreadyCreatedFailure value)?
        chatAlreadyCreatedFailure,
    TResult? Function(_CannotStartLesson value)? cannotStartLesson,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirebaseFailure value)? firebaseFailure,
    TResult Function(_FirebaseFailureNoErrorMessage value)?
        firebaseFailureNoErrorMessage,
    TResult Function(_NoContactsFailure value)? noContactsFailure,
    TResult Function(_ChatAlreadyCreatedFailure value)?
        chatAlreadyCreatedFailure,
    TResult Function(_CannotStartLesson value)? cannotStartLesson,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppFailuresCopyWith<AppFailures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppFailuresCopyWith<$Res> {
  factory $AppFailuresCopyWith(
          AppFailures value, $Res Function(AppFailures) then) =
      _$AppFailuresCopyWithImpl<$Res, AppFailures>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class _$AppFailuresCopyWithImpl<$Res, $Val extends AppFailures>
    implements $AppFailuresCopyWith<$Res> {
  _$AppFailuresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FirebaseFailureCopyWith<$Res>
    implements $AppFailuresCopyWith<$Res> {
  factory _$$_FirebaseFailureCopyWith(
          _$_FirebaseFailure value, $Res Function(_$_FirebaseFailure) then) =
      __$$_FirebaseFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$_FirebaseFailureCopyWithImpl<$Res>
    extends _$AppFailuresCopyWithImpl<$Res, _$_FirebaseFailure>
    implements _$$_FirebaseFailureCopyWith<$Res> {
  __$$_FirebaseFailureCopyWithImpl(
      _$_FirebaseFailure _value, $Res Function(_$_FirebaseFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$_FirebaseFailure(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FirebaseFailure implements _FirebaseFailure {
  const _$_FirebaseFailure(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AppFailures.firebaseFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirebaseFailure &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FirebaseFailureCopyWith<_$_FirebaseFailure> get copyWith =>
      __$$_FirebaseFailureCopyWithImpl<_$_FirebaseFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) firebaseFailure,
    required TResult Function(String errorMessage)
        firebaseFailureNoErrorMessage,
    required TResult Function(String errorMessage) noContactsFailure,
    required TResult Function(String errorMessage) chatAlreadyCreatedFailure,
    required TResult Function(String errorMessage) cannotStartLesson,
  }) {
    return firebaseFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMessage)? firebaseFailure,
    TResult? Function(String errorMessage)? firebaseFailureNoErrorMessage,
    TResult? Function(String errorMessage)? noContactsFailure,
    TResult? Function(String errorMessage)? chatAlreadyCreatedFailure,
    TResult? Function(String errorMessage)? cannotStartLesson,
  }) {
    return firebaseFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? firebaseFailure,
    TResult Function(String errorMessage)? firebaseFailureNoErrorMessage,
    TResult Function(String errorMessage)? noContactsFailure,
    TResult Function(String errorMessage)? chatAlreadyCreatedFailure,
    TResult Function(String errorMessage)? cannotStartLesson,
    required TResult orElse(),
  }) {
    if (firebaseFailure != null) {
      return firebaseFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirebaseFailure value) firebaseFailure,
    required TResult Function(_FirebaseFailureNoErrorMessage value)
        firebaseFailureNoErrorMessage,
    required TResult Function(_NoContactsFailure value) noContactsFailure,
    required TResult Function(_ChatAlreadyCreatedFailure value)
        chatAlreadyCreatedFailure,
    required TResult Function(_CannotStartLesson value) cannotStartLesson,
  }) {
    return firebaseFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirebaseFailure value)? firebaseFailure,
    TResult? Function(_FirebaseFailureNoErrorMessage value)?
        firebaseFailureNoErrorMessage,
    TResult? Function(_NoContactsFailure value)? noContactsFailure,
    TResult? Function(_ChatAlreadyCreatedFailure value)?
        chatAlreadyCreatedFailure,
    TResult? Function(_CannotStartLesson value)? cannotStartLesson,
  }) {
    return firebaseFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirebaseFailure value)? firebaseFailure,
    TResult Function(_FirebaseFailureNoErrorMessage value)?
        firebaseFailureNoErrorMessage,
    TResult Function(_NoContactsFailure value)? noContactsFailure,
    TResult Function(_ChatAlreadyCreatedFailure value)?
        chatAlreadyCreatedFailure,
    TResult Function(_CannotStartLesson value)? cannotStartLesson,
    required TResult orElse(),
  }) {
    if (firebaseFailure != null) {
      return firebaseFailure(this);
    }
    return orElse();
  }
}

abstract class _FirebaseFailure implements AppFailures {
  const factory _FirebaseFailure(final String errorMessage) =
      _$_FirebaseFailure;

  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_FirebaseFailureCopyWith<_$_FirebaseFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FirebaseFailureNoErrorMessageCopyWith<$Res>
    implements $AppFailuresCopyWith<$Res> {
  factory _$$_FirebaseFailureNoErrorMessageCopyWith(
          _$_FirebaseFailureNoErrorMessage value,
          $Res Function(_$_FirebaseFailureNoErrorMessage) then) =
      __$$_FirebaseFailureNoErrorMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$_FirebaseFailureNoErrorMessageCopyWithImpl<$Res>
    extends _$AppFailuresCopyWithImpl<$Res, _$_FirebaseFailureNoErrorMessage>
    implements _$$_FirebaseFailureNoErrorMessageCopyWith<$Res> {
  __$$_FirebaseFailureNoErrorMessageCopyWithImpl(
      _$_FirebaseFailureNoErrorMessage _value,
      $Res Function(_$_FirebaseFailureNoErrorMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$_FirebaseFailureNoErrorMessage(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FirebaseFailureNoErrorMessage
    implements _FirebaseFailureNoErrorMessage {
  const _$_FirebaseFailureNoErrorMessage(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AppFailures.firebaseFailureNoErrorMessage(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirebaseFailureNoErrorMessage &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FirebaseFailureNoErrorMessageCopyWith<_$_FirebaseFailureNoErrorMessage>
      get copyWith => __$$_FirebaseFailureNoErrorMessageCopyWithImpl<
          _$_FirebaseFailureNoErrorMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) firebaseFailure,
    required TResult Function(String errorMessage)
        firebaseFailureNoErrorMessage,
    required TResult Function(String errorMessage) noContactsFailure,
    required TResult Function(String errorMessage) chatAlreadyCreatedFailure,
    required TResult Function(String errorMessage) cannotStartLesson,
  }) {
    return firebaseFailureNoErrorMessage(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMessage)? firebaseFailure,
    TResult? Function(String errorMessage)? firebaseFailureNoErrorMessage,
    TResult? Function(String errorMessage)? noContactsFailure,
    TResult? Function(String errorMessage)? chatAlreadyCreatedFailure,
    TResult? Function(String errorMessage)? cannotStartLesson,
  }) {
    return firebaseFailureNoErrorMessage?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? firebaseFailure,
    TResult Function(String errorMessage)? firebaseFailureNoErrorMessage,
    TResult Function(String errorMessage)? noContactsFailure,
    TResult Function(String errorMessage)? chatAlreadyCreatedFailure,
    TResult Function(String errorMessage)? cannotStartLesson,
    required TResult orElse(),
  }) {
    if (firebaseFailureNoErrorMessage != null) {
      return firebaseFailureNoErrorMessage(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirebaseFailure value) firebaseFailure,
    required TResult Function(_FirebaseFailureNoErrorMessage value)
        firebaseFailureNoErrorMessage,
    required TResult Function(_NoContactsFailure value) noContactsFailure,
    required TResult Function(_ChatAlreadyCreatedFailure value)
        chatAlreadyCreatedFailure,
    required TResult Function(_CannotStartLesson value) cannotStartLesson,
  }) {
    return firebaseFailureNoErrorMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirebaseFailure value)? firebaseFailure,
    TResult? Function(_FirebaseFailureNoErrorMessage value)?
        firebaseFailureNoErrorMessage,
    TResult? Function(_NoContactsFailure value)? noContactsFailure,
    TResult? Function(_ChatAlreadyCreatedFailure value)?
        chatAlreadyCreatedFailure,
    TResult? Function(_CannotStartLesson value)? cannotStartLesson,
  }) {
    return firebaseFailureNoErrorMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirebaseFailure value)? firebaseFailure,
    TResult Function(_FirebaseFailureNoErrorMessage value)?
        firebaseFailureNoErrorMessage,
    TResult Function(_NoContactsFailure value)? noContactsFailure,
    TResult Function(_ChatAlreadyCreatedFailure value)?
        chatAlreadyCreatedFailure,
    TResult Function(_CannotStartLesson value)? cannotStartLesson,
    required TResult orElse(),
  }) {
    if (firebaseFailureNoErrorMessage != null) {
      return firebaseFailureNoErrorMessage(this);
    }
    return orElse();
  }
}

abstract class _FirebaseFailureNoErrorMessage implements AppFailures {
  const factory _FirebaseFailureNoErrorMessage(final String errorMessage) =
      _$_FirebaseFailureNoErrorMessage;

  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_FirebaseFailureNoErrorMessageCopyWith<_$_FirebaseFailureNoErrorMessage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NoContactsFailureCopyWith<$Res>
    implements $AppFailuresCopyWith<$Res> {
  factory _$$_NoContactsFailureCopyWith(_$_NoContactsFailure value,
          $Res Function(_$_NoContactsFailure) then) =
      __$$_NoContactsFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$_NoContactsFailureCopyWithImpl<$Res>
    extends _$AppFailuresCopyWithImpl<$Res, _$_NoContactsFailure>
    implements _$$_NoContactsFailureCopyWith<$Res> {
  __$$_NoContactsFailureCopyWithImpl(
      _$_NoContactsFailure _value, $Res Function(_$_NoContactsFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$_NoContactsFailure(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NoContactsFailure implements _NoContactsFailure {
  const _$_NoContactsFailure(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AppFailures.noContactsFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoContactsFailure &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoContactsFailureCopyWith<_$_NoContactsFailure> get copyWith =>
      __$$_NoContactsFailureCopyWithImpl<_$_NoContactsFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) firebaseFailure,
    required TResult Function(String errorMessage)
        firebaseFailureNoErrorMessage,
    required TResult Function(String errorMessage) noContactsFailure,
    required TResult Function(String errorMessage) chatAlreadyCreatedFailure,
    required TResult Function(String errorMessage) cannotStartLesson,
  }) {
    return noContactsFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMessage)? firebaseFailure,
    TResult? Function(String errorMessage)? firebaseFailureNoErrorMessage,
    TResult? Function(String errorMessage)? noContactsFailure,
    TResult? Function(String errorMessage)? chatAlreadyCreatedFailure,
    TResult? Function(String errorMessage)? cannotStartLesson,
  }) {
    return noContactsFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? firebaseFailure,
    TResult Function(String errorMessage)? firebaseFailureNoErrorMessage,
    TResult Function(String errorMessage)? noContactsFailure,
    TResult Function(String errorMessage)? chatAlreadyCreatedFailure,
    TResult Function(String errorMessage)? cannotStartLesson,
    required TResult orElse(),
  }) {
    if (noContactsFailure != null) {
      return noContactsFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirebaseFailure value) firebaseFailure,
    required TResult Function(_FirebaseFailureNoErrorMessage value)
        firebaseFailureNoErrorMessage,
    required TResult Function(_NoContactsFailure value) noContactsFailure,
    required TResult Function(_ChatAlreadyCreatedFailure value)
        chatAlreadyCreatedFailure,
    required TResult Function(_CannotStartLesson value) cannotStartLesson,
  }) {
    return noContactsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirebaseFailure value)? firebaseFailure,
    TResult? Function(_FirebaseFailureNoErrorMessage value)?
        firebaseFailureNoErrorMessage,
    TResult? Function(_NoContactsFailure value)? noContactsFailure,
    TResult? Function(_ChatAlreadyCreatedFailure value)?
        chatAlreadyCreatedFailure,
    TResult? Function(_CannotStartLesson value)? cannotStartLesson,
  }) {
    return noContactsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirebaseFailure value)? firebaseFailure,
    TResult Function(_FirebaseFailureNoErrorMessage value)?
        firebaseFailureNoErrorMessage,
    TResult Function(_NoContactsFailure value)? noContactsFailure,
    TResult Function(_ChatAlreadyCreatedFailure value)?
        chatAlreadyCreatedFailure,
    TResult Function(_CannotStartLesson value)? cannotStartLesson,
    required TResult orElse(),
  }) {
    if (noContactsFailure != null) {
      return noContactsFailure(this);
    }
    return orElse();
  }
}

abstract class _NoContactsFailure implements AppFailures {
  const factory _NoContactsFailure(final String errorMessage) =
      _$_NoContactsFailure;

  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_NoContactsFailureCopyWith<_$_NoContactsFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChatAlreadyCreatedFailureCopyWith<$Res>
    implements $AppFailuresCopyWith<$Res> {
  factory _$$_ChatAlreadyCreatedFailureCopyWith(
          _$_ChatAlreadyCreatedFailure value,
          $Res Function(_$_ChatAlreadyCreatedFailure) then) =
      __$$_ChatAlreadyCreatedFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$_ChatAlreadyCreatedFailureCopyWithImpl<$Res>
    extends _$AppFailuresCopyWithImpl<$Res, _$_ChatAlreadyCreatedFailure>
    implements _$$_ChatAlreadyCreatedFailureCopyWith<$Res> {
  __$$_ChatAlreadyCreatedFailureCopyWithImpl(
      _$_ChatAlreadyCreatedFailure _value,
      $Res Function(_$_ChatAlreadyCreatedFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$_ChatAlreadyCreatedFailure(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChatAlreadyCreatedFailure implements _ChatAlreadyCreatedFailure {
  const _$_ChatAlreadyCreatedFailure(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AppFailures.chatAlreadyCreatedFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatAlreadyCreatedFailure &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatAlreadyCreatedFailureCopyWith<_$_ChatAlreadyCreatedFailure>
      get copyWith => __$$_ChatAlreadyCreatedFailureCopyWithImpl<
          _$_ChatAlreadyCreatedFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) firebaseFailure,
    required TResult Function(String errorMessage)
        firebaseFailureNoErrorMessage,
    required TResult Function(String errorMessage) noContactsFailure,
    required TResult Function(String errorMessage) chatAlreadyCreatedFailure,
    required TResult Function(String errorMessage) cannotStartLesson,
  }) {
    return chatAlreadyCreatedFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMessage)? firebaseFailure,
    TResult? Function(String errorMessage)? firebaseFailureNoErrorMessage,
    TResult? Function(String errorMessage)? noContactsFailure,
    TResult? Function(String errorMessage)? chatAlreadyCreatedFailure,
    TResult? Function(String errorMessage)? cannotStartLesson,
  }) {
    return chatAlreadyCreatedFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? firebaseFailure,
    TResult Function(String errorMessage)? firebaseFailureNoErrorMessage,
    TResult Function(String errorMessage)? noContactsFailure,
    TResult Function(String errorMessage)? chatAlreadyCreatedFailure,
    TResult Function(String errorMessage)? cannotStartLesson,
    required TResult orElse(),
  }) {
    if (chatAlreadyCreatedFailure != null) {
      return chatAlreadyCreatedFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirebaseFailure value) firebaseFailure,
    required TResult Function(_FirebaseFailureNoErrorMessage value)
        firebaseFailureNoErrorMessage,
    required TResult Function(_NoContactsFailure value) noContactsFailure,
    required TResult Function(_ChatAlreadyCreatedFailure value)
        chatAlreadyCreatedFailure,
    required TResult Function(_CannotStartLesson value) cannotStartLesson,
  }) {
    return chatAlreadyCreatedFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirebaseFailure value)? firebaseFailure,
    TResult? Function(_FirebaseFailureNoErrorMessage value)?
        firebaseFailureNoErrorMessage,
    TResult? Function(_NoContactsFailure value)? noContactsFailure,
    TResult? Function(_ChatAlreadyCreatedFailure value)?
        chatAlreadyCreatedFailure,
    TResult? Function(_CannotStartLesson value)? cannotStartLesson,
  }) {
    return chatAlreadyCreatedFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirebaseFailure value)? firebaseFailure,
    TResult Function(_FirebaseFailureNoErrorMessage value)?
        firebaseFailureNoErrorMessage,
    TResult Function(_NoContactsFailure value)? noContactsFailure,
    TResult Function(_ChatAlreadyCreatedFailure value)?
        chatAlreadyCreatedFailure,
    TResult Function(_CannotStartLesson value)? cannotStartLesson,
    required TResult orElse(),
  }) {
    if (chatAlreadyCreatedFailure != null) {
      return chatAlreadyCreatedFailure(this);
    }
    return orElse();
  }
}

abstract class _ChatAlreadyCreatedFailure implements AppFailures {
  const factory _ChatAlreadyCreatedFailure(final String errorMessage) =
      _$_ChatAlreadyCreatedFailure;

  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_ChatAlreadyCreatedFailureCopyWith<_$_ChatAlreadyCreatedFailure>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CannotStartLessonCopyWith<$Res>
    implements $AppFailuresCopyWith<$Res> {
  factory _$$_CannotStartLessonCopyWith(_$_CannotStartLesson value,
          $Res Function(_$_CannotStartLesson) then) =
      __$$_CannotStartLessonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$_CannotStartLessonCopyWithImpl<$Res>
    extends _$AppFailuresCopyWithImpl<$Res, _$_CannotStartLesson>
    implements _$$_CannotStartLessonCopyWith<$Res> {
  __$$_CannotStartLessonCopyWithImpl(
      _$_CannotStartLesson _value, $Res Function(_$_CannotStartLesson) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$_CannotStartLesson(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CannotStartLesson implements _CannotStartLesson {
  const _$_CannotStartLesson(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AppFailures.cannotStartLesson(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CannotStartLesson &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CannotStartLessonCopyWith<_$_CannotStartLesson> get copyWith =>
      __$$_CannotStartLessonCopyWithImpl<_$_CannotStartLesson>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) firebaseFailure,
    required TResult Function(String errorMessage)
        firebaseFailureNoErrorMessage,
    required TResult Function(String errorMessage) noContactsFailure,
    required TResult Function(String errorMessage) chatAlreadyCreatedFailure,
    required TResult Function(String errorMessage) cannotStartLesson,
  }) {
    return cannotStartLesson(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMessage)? firebaseFailure,
    TResult? Function(String errorMessage)? firebaseFailureNoErrorMessage,
    TResult? Function(String errorMessage)? noContactsFailure,
    TResult? Function(String errorMessage)? chatAlreadyCreatedFailure,
    TResult? Function(String errorMessage)? cannotStartLesson,
  }) {
    return cannotStartLesson?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? firebaseFailure,
    TResult Function(String errorMessage)? firebaseFailureNoErrorMessage,
    TResult Function(String errorMessage)? noContactsFailure,
    TResult Function(String errorMessage)? chatAlreadyCreatedFailure,
    TResult Function(String errorMessage)? cannotStartLesson,
    required TResult orElse(),
  }) {
    if (cannotStartLesson != null) {
      return cannotStartLesson(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirebaseFailure value) firebaseFailure,
    required TResult Function(_FirebaseFailureNoErrorMessage value)
        firebaseFailureNoErrorMessage,
    required TResult Function(_NoContactsFailure value) noContactsFailure,
    required TResult Function(_ChatAlreadyCreatedFailure value)
        chatAlreadyCreatedFailure,
    required TResult Function(_CannotStartLesson value) cannotStartLesson,
  }) {
    return cannotStartLesson(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirebaseFailure value)? firebaseFailure,
    TResult? Function(_FirebaseFailureNoErrorMessage value)?
        firebaseFailureNoErrorMessage,
    TResult? Function(_NoContactsFailure value)? noContactsFailure,
    TResult? Function(_ChatAlreadyCreatedFailure value)?
        chatAlreadyCreatedFailure,
    TResult? Function(_CannotStartLesson value)? cannotStartLesson,
  }) {
    return cannotStartLesson?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirebaseFailure value)? firebaseFailure,
    TResult Function(_FirebaseFailureNoErrorMessage value)?
        firebaseFailureNoErrorMessage,
    TResult Function(_NoContactsFailure value)? noContactsFailure,
    TResult Function(_ChatAlreadyCreatedFailure value)?
        chatAlreadyCreatedFailure,
    TResult Function(_CannotStartLesson value)? cannotStartLesson,
    required TResult orElse(),
  }) {
    if (cannotStartLesson != null) {
      return cannotStartLesson(this);
    }
    return orElse();
  }
}

abstract class _CannotStartLesson implements AppFailures {
  const factory _CannotStartLesson(final String errorMessage) =
      _$_CannotStartLesson;

  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_CannotStartLessonCopyWith<_$_CannotStartLesson> get copyWith =>
      throw _privateConstructorUsedError;
}
