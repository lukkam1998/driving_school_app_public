// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpEvent {
  UserRegisterData get userRegisterData => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserRegisterData userRegisterData) signUpUser,
    required TResult Function(UserRegisterData userRegisterData)
        signUpInsturctor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserRegisterData userRegisterData)? signUpUser,
    TResult? Function(UserRegisterData userRegisterData)? signUpInsturctor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserRegisterData userRegisterData)? signUpUser,
    TResult Function(UserRegisterData userRegisterData)? signUpInsturctor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpUserEvent value) signUpUser,
    required TResult Function(SignUpInstructorEvent value) signUpInsturctor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpUserEvent value)? signUpUser,
    TResult? Function(SignUpInstructorEvent value)? signUpInsturctor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpUserEvent value)? signUpUser,
    TResult Function(SignUpInstructorEvent value)? signUpInsturctor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpEventCopyWith<SignUpEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res, SignUpEvent>;
  @useResult
  $Res call({UserRegisterData userRegisterData});

  $UserRegisterDataCopyWith<$Res> get userRegisterData;
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res, $Val extends SignUpEvent>
    implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userRegisterData = null,
  }) {
    return _then(_value.copyWith(
      userRegisterData: null == userRegisterData
          ? _value.userRegisterData
          : userRegisterData // ignore: cast_nullable_to_non_nullable
              as UserRegisterData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserRegisterDataCopyWith<$Res> get userRegisterData {
    return $UserRegisterDataCopyWith<$Res>(_value.userRegisterData, (value) {
      return _then(_value.copyWith(userRegisterData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignUpUserEventCopyWith<$Res>
    implements $SignUpEventCopyWith<$Res> {
  factory _$$SignUpUserEventCopyWith(
          _$SignUpUserEvent value, $Res Function(_$SignUpUserEvent) then) =
      __$$SignUpUserEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserRegisterData userRegisterData});

  @override
  $UserRegisterDataCopyWith<$Res> get userRegisterData;
}

/// @nodoc
class __$$SignUpUserEventCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$SignUpUserEvent>
    implements _$$SignUpUserEventCopyWith<$Res> {
  __$$SignUpUserEventCopyWithImpl(
      _$SignUpUserEvent _value, $Res Function(_$SignUpUserEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userRegisterData = null,
  }) {
    return _then(_$SignUpUserEvent(
      null == userRegisterData
          ? _value.userRegisterData
          : userRegisterData // ignore: cast_nullable_to_non_nullable
              as UserRegisterData,
    ));
  }
}

/// @nodoc

class _$SignUpUserEvent implements SignUpUserEvent {
  const _$SignUpUserEvent(this.userRegisterData);

  @override
  final UserRegisterData userRegisterData;

  @override
  String toString() {
    return 'SignUpEvent.signUpUser(userRegisterData: $userRegisterData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpUserEvent &&
            (identical(other.userRegisterData, userRegisterData) ||
                other.userRegisterData == userRegisterData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userRegisterData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpUserEventCopyWith<_$SignUpUserEvent> get copyWith =>
      __$$SignUpUserEventCopyWithImpl<_$SignUpUserEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserRegisterData userRegisterData) signUpUser,
    required TResult Function(UserRegisterData userRegisterData)
        signUpInsturctor,
  }) {
    return signUpUser(userRegisterData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserRegisterData userRegisterData)? signUpUser,
    TResult? Function(UserRegisterData userRegisterData)? signUpInsturctor,
  }) {
    return signUpUser?.call(userRegisterData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserRegisterData userRegisterData)? signUpUser,
    TResult Function(UserRegisterData userRegisterData)? signUpInsturctor,
    required TResult orElse(),
  }) {
    if (signUpUser != null) {
      return signUpUser(userRegisterData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpUserEvent value) signUpUser,
    required TResult Function(SignUpInstructorEvent value) signUpInsturctor,
  }) {
    return signUpUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpUserEvent value)? signUpUser,
    TResult? Function(SignUpInstructorEvent value)? signUpInsturctor,
  }) {
    return signUpUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpUserEvent value)? signUpUser,
    TResult Function(SignUpInstructorEvent value)? signUpInsturctor,
    required TResult orElse(),
  }) {
    if (signUpUser != null) {
      return signUpUser(this);
    }
    return orElse();
  }
}

abstract class SignUpUserEvent implements SignUpEvent {
  const factory SignUpUserEvent(final UserRegisterData userRegisterData) =
      _$SignUpUserEvent;

  @override
  UserRegisterData get userRegisterData;
  @override
  @JsonKey(ignore: true)
  _$$SignUpUserEventCopyWith<_$SignUpUserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpInstructorEventCopyWith<$Res>
    implements $SignUpEventCopyWith<$Res> {
  factory _$$SignUpInstructorEventCopyWith(_$SignUpInstructorEvent value,
          $Res Function(_$SignUpInstructorEvent) then) =
      __$$SignUpInstructorEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserRegisterData userRegisterData});

  @override
  $UserRegisterDataCopyWith<$Res> get userRegisterData;
}

/// @nodoc
class __$$SignUpInstructorEventCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$SignUpInstructorEvent>
    implements _$$SignUpInstructorEventCopyWith<$Res> {
  __$$SignUpInstructorEventCopyWithImpl(_$SignUpInstructorEvent _value,
      $Res Function(_$SignUpInstructorEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userRegisterData = null,
  }) {
    return _then(_$SignUpInstructorEvent(
      null == userRegisterData
          ? _value.userRegisterData
          : userRegisterData // ignore: cast_nullable_to_non_nullable
              as UserRegisterData,
    ));
  }
}

/// @nodoc

class _$SignUpInstructorEvent implements SignUpInstructorEvent {
  const _$SignUpInstructorEvent(this.userRegisterData);

  @override
  final UserRegisterData userRegisterData;

  @override
  String toString() {
    return 'SignUpEvent.signUpInsturctor(userRegisterData: $userRegisterData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpInstructorEvent &&
            (identical(other.userRegisterData, userRegisterData) ||
                other.userRegisterData == userRegisterData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userRegisterData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpInstructorEventCopyWith<_$SignUpInstructorEvent> get copyWith =>
      __$$SignUpInstructorEventCopyWithImpl<_$SignUpInstructorEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserRegisterData userRegisterData) signUpUser,
    required TResult Function(UserRegisterData userRegisterData)
        signUpInsturctor,
  }) {
    return signUpInsturctor(userRegisterData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserRegisterData userRegisterData)? signUpUser,
    TResult? Function(UserRegisterData userRegisterData)? signUpInsturctor,
  }) {
    return signUpInsturctor?.call(userRegisterData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserRegisterData userRegisterData)? signUpUser,
    TResult Function(UserRegisterData userRegisterData)? signUpInsturctor,
    required TResult orElse(),
  }) {
    if (signUpInsturctor != null) {
      return signUpInsturctor(userRegisterData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpUserEvent value) signUpUser,
    required TResult Function(SignUpInstructorEvent value) signUpInsturctor,
  }) {
    return signUpInsturctor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpUserEvent value)? signUpUser,
    TResult? Function(SignUpInstructorEvent value)? signUpInsturctor,
  }) {
    return signUpInsturctor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpUserEvent value)? signUpUser,
    TResult Function(SignUpInstructorEvent value)? signUpInsturctor,
    required TResult orElse(),
  }) {
    if (signUpInsturctor != null) {
      return signUpInsturctor(this);
    }
    return orElse();
  }
}

abstract class SignUpInstructorEvent implements SignUpEvent {
  const factory SignUpInstructorEvent(final UserRegisterData userRegisterData) =
      _$SignUpInstructorEvent;

  @override
  UserRegisterData get userRegisterData;
  @override
  @JsonKey(ignore: true)
  _$$SignUpInstructorEventCopyWith<_$SignUpInstructorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignUpState {
  bool get isLoading => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) initial,
    required TResult Function(bool isLoading) success,
    required TResult Function(bool isLoading, String errorMessage) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? initial,
    TResult? Function(bool isLoading)? success,
    TResult? Function(bool isLoading, String errorMessage)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? initial,
    TResult Function(bool isLoading)? success,
    TResult Function(bool isLoading, String errorMessage)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_InitialCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$_Initial>
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
    return 'SignUpState.initial(isLoading: $isLoading)';
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
    required TResult Function(bool isLoading, String errorMessage) failure,
  }) {
    return initial(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? initial,
    TResult? Function(bool isLoading)? success,
    TResult? Function(bool isLoading, String errorMessage)? failure,
  }) {
    return initial?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? initial,
    TResult Function(bool isLoading)? success,
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
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SignUpState {
  const factory _Initial({final bool isLoading}) = _$_Initial;

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$_Success>
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
    return 'SignUpState.success(isLoading: $isLoading)';
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
    required TResult Function(bool isLoading, String errorMessage) failure,
  }) {
    return success(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? initial,
    TResult? Function(bool isLoading)? success,
    TResult? Function(bool isLoading, String errorMessage)? failure,
  }) {
    return success?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? initial,
    TResult Function(bool isLoading)? success,
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
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements SignUpState {
  const factory _Success({final bool isLoading}) = _$_Success;

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, String errorMessage});
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$_Failure>
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
    return 'SignUpState.failure(isLoading: $isLoading, errorMessage: $errorMessage)';
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
    required TResult Function(bool isLoading, String errorMessage) failure,
  }) {
    return failure(isLoading, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? initial,
    TResult? Function(bool isLoading)? success,
    TResult? Function(bool isLoading, String errorMessage)? failure,
  }) {
    return failure?.call(isLoading, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? initial,
    TResult Function(bool isLoading)? success,
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
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements SignUpState {
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
