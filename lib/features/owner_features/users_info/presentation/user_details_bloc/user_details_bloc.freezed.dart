// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserDetailsEvent {
  String get userId => throw _privateConstructorUsedError;
  bool get isTutor => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, bool isTutor) getUserDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, bool isTutor)? getUserDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, bool isTutor)? getUserDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserDetailsEvent value) getUserDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserDetailsEvent value)? getUserDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserDetailsEvent value)? getUserDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDetailsEventCopyWith<UserDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsEventCopyWith<$Res> {
  factory $UserDetailsEventCopyWith(
          UserDetailsEvent value, $Res Function(UserDetailsEvent) then) =
      _$UserDetailsEventCopyWithImpl<$Res, UserDetailsEvent>;
  @useResult
  $Res call({String userId, bool isTutor});
}

/// @nodoc
class _$UserDetailsEventCopyWithImpl<$Res, $Val extends UserDetailsEvent>
    implements $UserDetailsEventCopyWith<$Res> {
  _$UserDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? isTutor = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      isTutor: null == isTutor
          ? _value.isTutor
          : isTutor // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetUserDetailsEventCopyWith<$Res>
    implements $UserDetailsEventCopyWith<$Res> {
  factory _$$GetUserDetailsEventCopyWith(_$GetUserDetailsEvent value,
          $Res Function(_$GetUserDetailsEvent) then) =
      __$$GetUserDetailsEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, bool isTutor});
}

/// @nodoc
class __$$GetUserDetailsEventCopyWithImpl<$Res>
    extends _$UserDetailsEventCopyWithImpl<$Res, _$GetUserDetailsEvent>
    implements _$$GetUserDetailsEventCopyWith<$Res> {
  __$$GetUserDetailsEventCopyWithImpl(
      _$GetUserDetailsEvent _value, $Res Function(_$GetUserDetailsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? isTutor = null,
  }) {
    return _then(_$GetUserDetailsEvent(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      isTutor: null == isTutor
          ? _value.isTutor
          : isTutor // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetUserDetailsEvent implements GetUserDetailsEvent {
  const _$GetUserDetailsEvent({required this.userId, required this.isTutor});

  @override
  final String userId;
  @override
  final bool isTutor;

  @override
  String toString() {
    return 'UserDetailsEvent.getUserDetails(userId: $userId, isTutor: $isTutor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserDetailsEvent &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.isTutor, isTutor) || other.isTutor == isTutor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, isTutor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserDetailsEventCopyWith<_$GetUserDetailsEvent> get copyWith =>
      __$$GetUserDetailsEventCopyWithImpl<_$GetUserDetailsEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, bool isTutor) getUserDetails,
  }) {
    return getUserDetails(userId, isTutor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, bool isTutor)? getUserDetails,
  }) {
    return getUserDetails?.call(userId, isTutor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, bool isTutor)? getUserDetails,
    required TResult orElse(),
  }) {
    if (getUserDetails != null) {
      return getUserDetails(userId, isTutor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserDetailsEvent value) getUserDetails,
  }) {
    return getUserDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserDetailsEvent value)? getUserDetails,
  }) {
    return getUserDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserDetailsEvent value)? getUserDetails,
    required TResult orElse(),
  }) {
    if (getUserDetails != null) {
      return getUserDetails(this);
    }
    return orElse();
  }
}

abstract class GetUserDetailsEvent implements UserDetailsEvent {
  const factory GetUserDetailsEvent(
      {required final String userId,
      required final bool isTutor}) = _$GetUserDetailsEvent;

  @override
  String get userId;
  @override
  bool get isTutor;
  @override
  @JsonKey(ignore: true)
  _$$GetUserDetailsEventCopyWith<_$GetUserDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserDetailsState {
  List<UserCourseDetails> get courses => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDetailsStateCopyWith<UserDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsStateCopyWith<$Res> {
  factory $UserDetailsStateCopyWith(
          UserDetailsState value, $Res Function(UserDetailsState) then) =
      _$UserDetailsStateCopyWithImpl<$Res, UserDetailsState>;
  @useResult
  $Res call(
      {List<UserCourseDetails> courses,
      bool isLoading,
      bool hasError,
      String? errorMessage});
}

/// @nodoc
class _$UserDetailsStateCopyWithImpl<$Res, $Val extends UserDetailsState>
    implements $UserDetailsStateCopyWith<$Res> {
  _$UserDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
    Object? isLoading = null,
    Object? hasError = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      courses: null == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<UserCourseDetails>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserDetailsStateCopyWith<$Res>
    implements $UserDetailsStateCopyWith<$Res> {
  factory _$$_UserDetailsStateCopyWith(
          _$_UserDetailsState value, $Res Function(_$_UserDetailsState) then) =
      __$$_UserDetailsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<UserCourseDetails> courses,
      bool isLoading,
      bool hasError,
      String? errorMessage});
}

/// @nodoc
class __$$_UserDetailsStateCopyWithImpl<$Res>
    extends _$UserDetailsStateCopyWithImpl<$Res, _$_UserDetailsState>
    implements _$$_UserDetailsStateCopyWith<$Res> {
  __$$_UserDetailsStateCopyWithImpl(
      _$_UserDetailsState _value, $Res Function(_$_UserDetailsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
    Object? isLoading = null,
    Object? hasError = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_UserDetailsState(
      courses: null == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<UserCourseDetails>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UserDetailsState implements _UserDetailsState {
  const _$_UserDetailsState(
      {required final List<UserCourseDetails> courses,
      required this.isLoading,
      required this.hasError,
      this.errorMessage})
      : _courses = courses;

  final List<UserCourseDetails> _courses;
  @override
  List<UserCourseDetails> get courses {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courses);
  }

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'UserDetailsState(courses: $courses, isLoading: $isLoading, hasError: $hasError, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDetailsState &&
            const DeepCollectionEquality().equals(other._courses, _courses) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_courses),
      isLoading,
      hasError,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDetailsStateCopyWith<_$_UserDetailsState> get copyWith =>
      __$$_UserDetailsStateCopyWithImpl<_$_UserDetailsState>(this, _$identity);
}

abstract class _UserDetailsState implements UserDetailsState {
  const factory _UserDetailsState(
      {required final List<UserCourseDetails> courses,
      required final bool isLoading,
      required final bool hasError,
      final String? errorMessage}) = _$_UserDetailsState;

  @override
  List<UserCourseDetails> get courses;
  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_UserDetailsStateCopyWith<_$_UserDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
