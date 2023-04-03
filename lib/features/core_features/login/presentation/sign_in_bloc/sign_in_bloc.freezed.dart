// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserSignInData userSignInData) signUpUser,
    required TResult Function() signOut,
    required TResult Function() singedUp,
    required TResult Function() signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserSignInData userSignInData)? signUpUser,
    TResult? Function()? signOut,
    TResult? Function()? singedUp,
    TResult? Function()? signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserSignInData userSignInData)? signUpUser,
    TResult Function()? signOut,
    TResult Function()? singedUp,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInUserEvent value) signUpUser,
    required TResult Function(SignOutUserEvent value) signOut,
    required TResult Function(UserSignedUpEvent value) singedUp,
    required TResult Function(UserSignedOutEvent value) signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInUserEvent value)? signUpUser,
    TResult? Function(SignOutUserEvent value)? signOut,
    TResult? Function(UserSignedUpEvent value)? singedUp,
    TResult? Function(UserSignedOutEvent value)? signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInUserEvent value)? signUpUser,
    TResult Function(SignOutUserEvent value)? signOut,
    TResult Function(UserSignedUpEvent value)? singedUp,
    TResult Function(UserSignedOutEvent value)? signedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res, SignInEvent>;
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res, $Val extends SignInEvent>
    implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignInUserEventCopyWith<$Res> {
  factory _$$SignInUserEventCopyWith(
          _$SignInUserEvent value, $Res Function(_$SignInUserEvent) then) =
      __$$SignInUserEventCopyWithImpl<$Res>;
  @useResult
  $Res call({UserSignInData userSignInData});

  $UserSignInDataCopyWith<$Res> get userSignInData;
}

/// @nodoc
class __$$SignInUserEventCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SignInUserEvent>
    implements _$$SignInUserEventCopyWith<$Res> {
  __$$SignInUserEventCopyWithImpl(
      _$SignInUserEvent _value, $Res Function(_$SignInUserEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userSignInData = null,
  }) {
    return _then(_$SignInUserEvent(
      null == userSignInData
          ? _value.userSignInData
          : userSignInData // ignore: cast_nullable_to_non_nullable
              as UserSignInData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserSignInDataCopyWith<$Res> get userSignInData {
    return $UserSignInDataCopyWith<$Res>(_value.userSignInData, (value) {
      return _then(_value.copyWith(userSignInData: value));
    });
  }
}

/// @nodoc

class _$SignInUserEvent implements SignInUserEvent {
  const _$SignInUserEvent(this.userSignInData);

  @override
  final UserSignInData userSignInData;

  @override
  String toString() {
    return 'SignInEvent.signUpUser(userSignInData: $userSignInData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInUserEvent &&
            (identical(other.userSignInData, userSignInData) ||
                other.userSignInData == userSignInData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userSignInData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInUserEventCopyWith<_$SignInUserEvent> get copyWith =>
      __$$SignInUserEventCopyWithImpl<_$SignInUserEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserSignInData userSignInData) signUpUser,
    required TResult Function() signOut,
    required TResult Function() singedUp,
    required TResult Function() signedOut,
  }) {
    return signUpUser(userSignInData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserSignInData userSignInData)? signUpUser,
    TResult? Function()? signOut,
    TResult? Function()? singedUp,
    TResult? Function()? signedOut,
  }) {
    return signUpUser?.call(userSignInData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserSignInData userSignInData)? signUpUser,
    TResult Function()? signOut,
    TResult Function()? singedUp,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (signUpUser != null) {
      return signUpUser(userSignInData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInUserEvent value) signUpUser,
    required TResult Function(SignOutUserEvent value) signOut,
    required TResult Function(UserSignedUpEvent value) singedUp,
    required TResult Function(UserSignedOutEvent value) signedOut,
  }) {
    return signUpUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInUserEvent value)? signUpUser,
    TResult? Function(SignOutUserEvent value)? signOut,
    TResult? Function(UserSignedUpEvent value)? singedUp,
    TResult? Function(UserSignedOutEvent value)? signedOut,
  }) {
    return signUpUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInUserEvent value)? signUpUser,
    TResult Function(SignOutUserEvent value)? signOut,
    TResult Function(UserSignedUpEvent value)? singedUp,
    TResult Function(UserSignedOutEvent value)? signedOut,
    required TResult orElse(),
  }) {
    if (signUpUser != null) {
      return signUpUser(this);
    }
    return orElse();
  }
}

abstract class SignInUserEvent implements SignInEvent {
  const factory SignInUserEvent(final UserSignInData userSignInData) =
      _$SignInUserEvent;

  UserSignInData get userSignInData;
  @JsonKey(ignore: true)
  _$$SignInUserEventCopyWith<_$SignInUserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignOutUserEventCopyWith<$Res> {
  factory _$$SignOutUserEventCopyWith(
          _$SignOutUserEvent value, $Res Function(_$SignOutUserEvent) then) =
      __$$SignOutUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutUserEventCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SignOutUserEvent>
    implements _$$SignOutUserEventCopyWith<$Res> {
  __$$SignOutUserEventCopyWithImpl(
      _$SignOutUserEvent _value, $Res Function(_$SignOutUserEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOutUserEvent implements SignOutUserEvent {
  const _$SignOutUserEvent();

  @override
  String toString() {
    return 'SignInEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutUserEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserSignInData userSignInData) signUpUser,
    required TResult Function() signOut,
    required TResult Function() singedUp,
    required TResult Function() signedOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserSignInData userSignInData)? signUpUser,
    TResult? Function()? signOut,
    TResult? Function()? singedUp,
    TResult? Function()? signedOut,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserSignInData userSignInData)? signUpUser,
    TResult Function()? signOut,
    TResult Function()? singedUp,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInUserEvent value) signUpUser,
    required TResult Function(SignOutUserEvent value) signOut,
    required TResult Function(UserSignedUpEvent value) singedUp,
    required TResult Function(UserSignedOutEvent value) signedOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInUserEvent value)? signUpUser,
    TResult? Function(SignOutUserEvent value)? signOut,
    TResult? Function(UserSignedUpEvent value)? singedUp,
    TResult? Function(UserSignedOutEvent value)? signedOut,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInUserEvent value)? signUpUser,
    TResult Function(SignOutUserEvent value)? signOut,
    TResult Function(UserSignedUpEvent value)? singedUp,
    TResult Function(UserSignedOutEvent value)? signedOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class SignOutUserEvent implements SignInEvent {
  const factory SignOutUserEvent() = _$SignOutUserEvent;
}

/// @nodoc
abstract class _$$UserSignedUpEventCopyWith<$Res> {
  factory _$$UserSignedUpEventCopyWith(
          _$UserSignedUpEvent value, $Res Function(_$UserSignedUpEvent) then) =
      __$$UserSignedUpEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserSignedUpEventCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$UserSignedUpEvent>
    implements _$$UserSignedUpEventCopyWith<$Res> {
  __$$UserSignedUpEventCopyWithImpl(
      _$UserSignedUpEvent _value, $Res Function(_$UserSignedUpEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserSignedUpEvent implements UserSignedUpEvent {
  const _$UserSignedUpEvent();

  @override
  String toString() {
    return 'SignInEvent.singedUp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserSignedUpEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserSignInData userSignInData) signUpUser,
    required TResult Function() signOut,
    required TResult Function() singedUp,
    required TResult Function() signedOut,
  }) {
    return singedUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserSignInData userSignInData)? signUpUser,
    TResult? Function()? signOut,
    TResult? Function()? singedUp,
    TResult? Function()? signedOut,
  }) {
    return singedUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserSignInData userSignInData)? signUpUser,
    TResult Function()? signOut,
    TResult Function()? singedUp,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (singedUp != null) {
      return singedUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInUserEvent value) signUpUser,
    required TResult Function(SignOutUserEvent value) signOut,
    required TResult Function(UserSignedUpEvent value) singedUp,
    required TResult Function(UserSignedOutEvent value) signedOut,
  }) {
    return singedUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInUserEvent value)? signUpUser,
    TResult? Function(SignOutUserEvent value)? signOut,
    TResult? Function(UserSignedUpEvent value)? singedUp,
    TResult? Function(UserSignedOutEvent value)? signedOut,
  }) {
    return singedUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInUserEvent value)? signUpUser,
    TResult Function(SignOutUserEvent value)? signOut,
    TResult Function(UserSignedUpEvent value)? singedUp,
    TResult Function(UserSignedOutEvent value)? signedOut,
    required TResult orElse(),
  }) {
    if (singedUp != null) {
      return singedUp(this);
    }
    return orElse();
  }
}

abstract class UserSignedUpEvent implements SignInEvent {
  const factory UserSignedUpEvent() = _$UserSignedUpEvent;
}

/// @nodoc
abstract class _$$UserSignedOutEventCopyWith<$Res> {
  factory _$$UserSignedOutEventCopyWith(_$UserSignedOutEvent value,
          $Res Function(_$UserSignedOutEvent) then) =
      __$$UserSignedOutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserSignedOutEventCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$UserSignedOutEvent>
    implements _$$UserSignedOutEventCopyWith<$Res> {
  __$$UserSignedOutEventCopyWithImpl(
      _$UserSignedOutEvent _value, $Res Function(_$UserSignedOutEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserSignedOutEvent implements UserSignedOutEvent {
  const _$UserSignedOutEvent();

  @override
  String toString() {
    return 'SignInEvent.signedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserSignedOutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserSignInData userSignInData) signUpUser,
    required TResult Function() signOut,
    required TResult Function() singedUp,
    required TResult Function() signedOut,
  }) {
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserSignInData userSignInData)? signUpUser,
    TResult? Function()? signOut,
    TResult? Function()? singedUp,
    TResult? Function()? signedOut,
  }) {
    return signedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserSignInData userSignInData)? signUpUser,
    TResult Function()? signOut,
    TResult Function()? singedUp,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInUserEvent value) signUpUser,
    required TResult Function(SignOutUserEvent value) signOut,
    required TResult Function(UserSignedUpEvent value) singedUp,
    required TResult Function(UserSignedOutEvent value) signedOut,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInUserEvent value)? signUpUser,
    TResult? Function(SignOutUserEvent value)? signOut,
    TResult? Function(UserSignedUpEvent value)? singedUp,
    TResult? Function(UserSignedOutEvent value)? signedOut,
  }) {
    return signedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInUserEvent value)? signUpUser,
    TResult Function(SignOutUserEvent value)? signOut,
    TResult Function(UserSignedUpEvent value)? singedUp,
    TResult Function(UserSignedOutEvent value)? signedOut,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class UserSignedOutEvent implements SignInEvent {
  const factory UserSignedOutEvent() = _$UserSignedOutEvent;
}

/// @nodoc
mixin _$SignInState {
  bool get isLoading => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) initial,
    required TResult Function(bool isLoading) success,
    required TResult Function(bool isLoading) signedOut,
    required TResult Function(bool isLoading, String errorMessage) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? initial,
    TResult? Function(bool isLoading)? success,
    TResult? Function(bool isLoading)? signedOut,
    TResult? Function(bool isLoading, String errorMessage)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? initial,
    TResult Function(bool isLoading)? success,
    TResult Function(bool isLoading)? signedOut,
    TResult Function(bool isLoading, String errorMessage)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $SignInStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$_Initial(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({this.isLoading = false});

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'SignInState.initial(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) initial,
    required TResult Function(bool isLoading) success,
    required TResult Function(bool isLoading) signedOut,
    required TResult Function(bool isLoading, String errorMessage) failure,
  }) {
    return initial(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? initial,
    TResult? Function(bool isLoading)? success,
    TResult? Function(bool isLoading)? signedOut,
    TResult? Function(bool isLoading, String errorMessage)? failure,
  }) {
    return initial?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? initial,
    TResult Function(bool isLoading)? success,
    TResult Function(bool isLoading)? signedOut,
    TResult Function(bool isLoading, String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SignInState {
  const factory _Initial({final bool isLoading}) = _$_Initial;

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> implements $SignInStateCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$_Success(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success({this.isLoading = false});

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'SignInState.success(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) initial,
    required TResult Function(bool isLoading) success,
    required TResult Function(bool isLoading) signedOut,
    required TResult Function(bool isLoading, String errorMessage) failure,
  }) {
    return success(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? initial,
    TResult? Function(bool isLoading)? success,
    TResult? Function(bool isLoading)? signedOut,
    TResult? Function(bool isLoading, String errorMessage)? failure,
  }) {
    return success?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? initial,
    TResult Function(bool isLoading)? success,
    TResult Function(bool isLoading)? signedOut,
    TResult Function(bool isLoading, String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements SignInState {
  const factory _Success({final bool isLoading}) = _$_Success;

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignedOutCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$_SignedOutCopyWith(
          _$_SignedOut value, $Res Function(_$_SignedOut) then) =
      __$$_SignedOutCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$_SignedOutCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$_SignedOut>
    implements _$$_SignedOutCopyWith<$Res> {
  __$$_SignedOutCopyWithImpl(
      _$_SignedOut _value, $Res Function(_$_SignedOut) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$_SignedOut(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SignedOut implements _SignedOut {
  const _$_SignedOut({this.isLoading = false});

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'SignInState.signedOut(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignedOut &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignedOutCopyWith<_$_SignedOut> get copyWith =>
      __$$_SignedOutCopyWithImpl<_$_SignedOut>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) initial,
    required TResult Function(bool isLoading) success,
    required TResult Function(bool isLoading) signedOut,
    required TResult Function(bool isLoading, String errorMessage) failure,
  }) {
    return signedOut(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? initial,
    TResult? Function(bool isLoading)? success,
    TResult? Function(bool isLoading)? signedOut,
    TResult? Function(bool isLoading, String errorMessage)? failure,
  }) {
    return signedOut?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? initial,
    TResult Function(bool isLoading)? success,
    TResult Function(bool isLoading)? signedOut,
    TResult Function(bool isLoading, String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Failure value) failure,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_Failure value)? failure,
  }) {
    return signedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class _SignedOut implements SignInState {
  const factory _SignedOut({final bool isLoading}) = _$_SignedOut;

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_SignedOutCopyWith<_$_SignedOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> implements $SignInStateCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, String errorMessage});
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_Failure(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure({this.isLoading = false, required this.errorMessage});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'SignInState.failure(isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) initial,
    required TResult Function(bool isLoading) success,
    required TResult Function(bool isLoading) signedOut,
    required TResult Function(bool isLoading, String errorMessage) failure,
  }) {
    return failure(isLoading, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? initial,
    TResult? Function(bool isLoading)? success,
    TResult? Function(bool isLoading)? signedOut,
    TResult? Function(bool isLoading, String errorMessage)? failure,
  }) {
    return failure?.call(isLoading, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? initial,
    TResult Function(bool isLoading)? success,
    TResult Function(bool isLoading)? signedOut,
    TResult Function(bool isLoading, String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(isLoading, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements SignInState {
  const factory _Failure(
      {final bool isLoading, required final String errorMessage}) = _$_Failure;

  @override
  bool get isLoading;
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
