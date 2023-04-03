// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'start_lesson_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StartLessonEvent {
  UserCourseData get userCourseData => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? lessonId, UserCourseData userCourseData)
        beginLesson,
    required TResult Function(String lessonId, UserCourseData userCourseData)
        endLesson,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? lessonId, UserCourseData userCourseData)?
        beginLesson,
    TResult? Function(String lessonId, UserCourseData userCourseData)?
        endLesson,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? lessonId, UserCourseData userCourseData)?
        beginLesson,
    TResult Function(String lessonId, UserCourseData userCourseData)? endLesson,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BeginLessonEvent value) beginLesson,
    required TResult Function(EndLessonEvent value) endLesson,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BeginLessonEvent value)? beginLesson,
    TResult? Function(EndLessonEvent value)? endLesson,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BeginLessonEvent value)? beginLesson,
    TResult Function(EndLessonEvent value)? endLesson,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StartLessonEventCopyWith<StartLessonEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartLessonEventCopyWith<$Res> {
  factory $StartLessonEventCopyWith(
          StartLessonEvent value, $Res Function(StartLessonEvent) then) =
      _$StartLessonEventCopyWithImpl<$Res, StartLessonEvent>;
  @useResult
  $Res call({UserCourseData userCourseData});
}

/// @nodoc
class _$StartLessonEventCopyWithImpl<$Res, $Val extends StartLessonEvent>
    implements $StartLessonEventCopyWith<$Res> {
  _$StartLessonEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userCourseData = null,
  }) {
    return _then(_value.copyWith(
      userCourseData: null == userCourseData
          ? _value.userCourseData
          : userCourseData // ignore: cast_nullable_to_non_nullable
              as UserCourseData,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BeginLessonEventCopyWith<$Res>
    implements $StartLessonEventCopyWith<$Res> {
  factory _$$BeginLessonEventCopyWith(
          _$BeginLessonEvent value, $Res Function(_$BeginLessonEvent) then) =
      __$$BeginLessonEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? lessonId, UserCourseData userCourseData});
}

/// @nodoc
class __$$BeginLessonEventCopyWithImpl<$Res>
    extends _$StartLessonEventCopyWithImpl<$Res, _$BeginLessonEvent>
    implements _$$BeginLessonEventCopyWith<$Res> {
  __$$BeginLessonEventCopyWithImpl(
      _$BeginLessonEvent _value, $Res Function(_$BeginLessonEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonId = freezed,
    Object? userCourseData = null,
  }) {
    return _then(_$BeginLessonEvent(
      lessonId: freezed == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String?,
      userCourseData: null == userCourseData
          ? _value.userCourseData
          : userCourseData // ignore: cast_nullable_to_non_nullable
              as UserCourseData,
    ));
  }
}

/// @nodoc

class _$BeginLessonEvent implements BeginLessonEvent {
  const _$BeginLessonEvent({this.lessonId, required this.userCourseData});

  @override
  final String? lessonId;
  @override
  final UserCourseData userCourseData;

  @override
  String toString() {
    return 'StartLessonEvent.beginLesson(lessonId: $lessonId, userCourseData: $userCourseData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeginLessonEvent &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.userCourseData, userCourseData) ||
                other.userCourseData == userCourseData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lessonId, userCourseData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeginLessonEventCopyWith<_$BeginLessonEvent> get copyWith =>
      __$$BeginLessonEventCopyWithImpl<_$BeginLessonEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? lessonId, UserCourseData userCourseData)
        beginLesson,
    required TResult Function(String lessonId, UserCourseData userCourseData)
        endLesson,
  }) {
    return beginLesson(lessonId, userCourseData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? lessonId, UserCourseData userCourseData)?
        beginLesson,
    TResult? Function(String lessonId, UserCourseData userCourseData)?
        endLesson,
  }) {
    return beginLesson?.call(lessonId, userCourseData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? lessonId, UserCourseData userCourseData)?
        beginLesson,
    TResult Function(String lessonId, UserCourseData userCourseData)? endLesson,
    required TResult orElse(),
  }) {
    if (beginLesson != null) {
      return beginLesson(lessonId, userCourseData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BeginLessonEvent value) beginLesson,
    required TResult Function(EndLessonEvent value) endLesson,
  }) {
    return beginLesson(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BeginLessonEvent value)? beginLesson,
    TResult? Function(EndLessonEvent value)? endLesson,
  }) {
    return beginLesson?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BeginLessonEvent value)? beginLesson,
    TResult Function(EndLessonEvent value)? endLesson,
    required TResult orElse(),
  }) {
    if (beginLesson != null) {
      return beginLesson(this);
    }
    return orElse();
  }
}

abstract class BeginLessonEvent implements StartLessonEvent {
  const factory BeginLessonEvent(
      {final String? lessonId,
      required final UserCourseData userCourseData}) = _$BeginLessonEvent;

  String? get lessonId;
  @override
  UserCourseData get userCourseData;
  @override
  @JsonKey(ignore: true)
  _$$BeginLessonEventCopyWith<_$BeginLessonEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EndLessonEventCopyWith<$Res>
    implements $StartLessonEventCopyWith<$Res> {
  factory _$$EndLessonEventCopyWith(
          _$EndLessonEvent value, $Res Function(_$EndLessonEvent) then) =
      __$$EndLessonEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String lessonId, UserCourseData userCourseData});
}

/// @nodoc
class __$$EndLessonEventCopyWithImpl<$Res>
    extends _$StartLessonEventCopyWithImpl<$Res, _$EndLessonEvent>
    implements _$$EndLessonEventCopyWith<$Res> {
  __$$EndLessonEventCopyWithImpl(
      _$EndLessonEvent _value, $Res Function(_$EndLessonEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonId = null,
    Object? userCourseData = null,
  }) {
    return _then(_$EndLessonEvent(
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String,
      userCourseData: null == userCourseData
          ? _value.userCourseData
          : userCourseData // ignore: cast_nullable_to_non_nullable
              as UserCourseData,
    ));
  }
}

/// @nodoc

class _$EndLessonEvent implements EndLessonEvent {
  const _$EndLessonEvent(
      {required this.lessonId, required this.userCourseData});

  @override
  final String lessonId;
  @override
  final UserCourseData userCourseData;

  @override
  String toString() {
    return 'StartLessonEvent.endLesson(lessonId: $lessonId, userCourseData: $userCourseData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EndLessonEvent &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.userCourseData, userCourseData) ||
                other.userCourseData == userCourseData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lessonId, userCourseData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EndLessonEventCopyWith<_$EndLessonEvent> get copyWith =>
      __$$EndLessonEventCopyWithImpl<_$EndLessonEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? lessonId, UserCourseData userCourseData)
        beginLesson,
    required TResult Function(String lessonId, UserCourseData userCourseData)
        endLesson,
  }) {
    return endLesson(lessonId, userCourseData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? lessonId, UserCourseData userCourseData)?
        beginLesson,
    TResult? Function(String lessonId, UserCourseData userCourseData)?
        endLesson,
  }) {
    return endLesson?.call(lessonId, userCourseData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? lessonId, UserCourseData userCourseData)?
        beginLesson,
    TResult Function(String lessonId, UserCourseData userCourseData)? endLesson,
    required TResult orElse(),
  }) {
    if (endLesson != null) {
      return endLesson(lessonId, userCourseData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BeginLessonEvent value) beginLesson,
    required TResult Function(EndLessonEvent value) endLesson,
  }) {
    return endLesson(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BeginLessonEvent value)? beginLesson,
    TResult? Function(EndLessonEvent value)? endLesson,
  }) {
    return endLesson?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BeginLessonEvent value)? beginLesson,
    TResult Function(EndLessonEvent value)? endLesson,
    required TResult orElse(),
  }) {
    if (endLesson != null) {
      return endLesson(this);
    }
    return orElse();
  }
}

abstract class EndLessonEvent implements StartLessonEvent {
  const factory EndLessonEvent(
      {required final String lessonId,
      required final UserCourseData userCourseData}) = _$EndLessonEvent;

  String get lessonId;
  @override
  UserCourseData get userCourseData;
  @override
  @JsonKey(ignore: true)
  _$$EndLessonEventCopyWith<_$EndLessonEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StartLessonState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get didStart => throw _privateConstructorUsedError;
  bool get didEnd => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StartLessonStateCopyWith<StartLessonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartLessonStateCopyWith<$Res> {
  factory $StartLessonStateCopyWith(
          StartLessonState value, $Res Function(StartLessonState) then) =
      _$StartLessonStateCopyWithImpl<$Res, StartLessonState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool didStart,
      bool didEnd,
      bool hasError,
      String errorMessage,
      DateTime? startDate,
      DateTime? endDate});
}

/// @nodoc
class _$StartLessonStateCopyWithImpl<$Res, $Val extends StartLessonState>
    implements $StartLessonStateCopyWith<$Res> {
  _$StartLessonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? didStart = null,
    Object? didEnd = null,
    Object? hasError = null,
    Object? errorMessage = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      didStart: null == didStart
          ? _value.didStart
          : didStart // ignore: cast_nullable_to_non_nullable
              as bool,
      didEnd: null == didEnd
          ? _value.didEnd
          : didEnd // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StartLessonStateCopyWith<$Res>
    implements $StartLessonStateCopyWith<$Res> {
  factory _$$_StartLessonStateCopyWith(
          _$_StartLessonState value, $Res Function(_$_StartLessonState) then) =
      __$$_StartLessonStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool didStart,
      bool didEnd,
      bool hasError,
      String errorMessage,
      DateTime? startDate,
      DateTime? endDate});
}

/// @nodoc
class __$$_StartLessonStateCopyWithImpl<$Res>
    extends _$StartLessonStateCopyWithImpl<$Res, _$_StartLessonState>
    implements _$$_StartLessonStateCopyWith<$Res> {
  __$$_StartLessonStateCopyWithImpl(
      _$_StartLessonState _value, $Res Function(_$_StartLessonState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? didStart = null,
    Object? didEnd = null,
    Object? hasError = null,
    Object? errorMessage = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_$_StartLessonState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      didStart: null == didStart
          ? _value.didStart
          : didStart // ignore: cast_nullable_to_non_nullable
              as bool,
      didEnd: null == didEnd
          ? _value.didEnd
          : didEnd // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_StartLessonState implements _StartLessonState {
  const _$_StartLessonState(
      {required this.isLoading,
      required this.didStart,
      required this.didEnd,
      required this.hasError,
      required this.errorMessage,
      this.startDate,
      this.endDate});

  @override
  final bool isLoading;
  @override
  final bool didStart;
  @override
  final bool didEnd;
  @override
  final bool hasError;
  @override
  final String errorMessage;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;

  @override
  String toString() {
    return 'StartLessonState(isLoading: $isLoading, didStart: $didStart, didEnd: $didEnd, hasError: $hasError, errorMessage: $errorMessage, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartLessonState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.didStart, didStart) ||
                other.didStart == didStart) &&
            (identical(other.didEnd, didEnd) || other.didEnd == didEnd) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, didStart, didEnd,
      hasError, errorMessage, startDate, endDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartLessonStateCopyWith<_$_StartLessonState> get copyWith =>
      __$$_StartLessonStateCopyWithImpl<_$_StartLessonState>(this, _$identity);
}

abstract class _StartLessonState implements StartLessonState {
  const factory _StartLessonState(
      {required final bool isLoading,
      required final bool didStart,
      required final bool didEnd,
      required final bool hasError,
      required final String errorMessage,
      final DateTime? startDate,
      final DateTime? endDate}) = _$_StartLessonState;

  @override
  bool get isLoading;
  @override
  bool get didStart;
  @override
  bool get didEnd;
  @override
  bool get hasError;
  @override
  String get errorMessage;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  @JsonKey(ignore: true)
  _$$_StartLessonStateCopyWith<_$_StartLessonState> get copyWith =>
      throw _privateConstructorUsedError;
}
