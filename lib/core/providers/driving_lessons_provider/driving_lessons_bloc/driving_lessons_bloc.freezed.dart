// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'driving_lessons_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DrivingLessonsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadUserLessonsData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadUserLessonsData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadUserLessonsData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUserLessonsDataEvent value)
        loadUserLessonsData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUserLessonsDataEvent value)? loadUserLessonsData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUserLessonsDataEvent value)? loadUserLessonsData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrivingLessonsEventCopyWith<$Res> {
  factory $DrivingLessonsEventCopyWith(
          DrivingLessonsEvent value, $Res Function(DrivingLessonsEvent) then) =
      _$DrivingLessonsEventCopyWithImpl<$Res, DrivingLessonsEvent>;
}

/// @nodoc
class _$DrivingLessonsEventCopyWithImpl<$Res, $Val extends DrivingLessonsEvent>
    implements $DrivingLessonsEventCopyWith<$Res> {
  _$DrivingLessonsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadUserLessonsDataEventCopyWith<$Res> {
  factory _$$LoadUserLessonsDataEventCopyWith(_$LoadUserLessonsDataEvent value,
          $Res Function(_$LoadUserLessonsDataEvent) then) =
      __$$LoadUserLessonsDataEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadUserLessonsDataEventCopyWithImpl<$Res>
    extends _$DrivingLessonsEventCopyWithImpl<$Res, _$LoadUserLessonsDataEvent>
    implements _$$LoadUserLessonsDataEventCopyWith<$Res> {
  __$$LoadUserLessonsDataEventCopyWithImpl(_$LoadUserLessonsDataEvent _value,
      $Res Function(_$LoadUserLessonsDataEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadUserLessonsDataEvent implements LoadUserLessonsDataEvent {
  const _$LoadUserLessonsDataEvent();

  @override
  String toString() {
    return 'DrivingLessonsEvent.loadUserLessonsData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadUserLessonsDataEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadUserLessonsData,
  }) {
    return loadUserLessonsData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadUserLessonsData,
  }) {
    return loadUserLessonsData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadUserLessonsData,
    required TResult orElse(),
  }) {
    if (loadUserLessonsData != null) {
      return loadUserLessonsData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUserLessonsDataEvent value)
        loadUserLessonsData,
  }) {
    return loadUserLessonsData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUserLessonsDataEvent value)? loadUserLessonsData,
  }) {
    return loadUserLessonsData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUserLessonsDataEvent value)? loadUserLessonsData,
    required TResult orElse(),
  }) {
    if (loadUserLessonsData != null) {
      return loadUserLessonsData(this);
    }
    return orElse();
  }
}

abstract class LoadUserLessonsDataEvent implements DrivingLessonsEvent {
  const factory LoadUserLessonsDataEvent() = _$LoadUserLessonsDataEvent;
}

/// @nodoc
mixin _$DrivingLessonsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLessonLoading => throw _privateConstructorUsedError;
  List<UserLesson> get userLessons => throw _privateConstructorUsedError;
  List<UserCourseData> get userCourses => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  DateTime get day => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DrivingLessonsStateCopyWith<DrivingLessonsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrivingLessonsStateCopyWith<$Res> {
  factory $DrivingLessonsStateCopyWith(
          DrivingLessonsState value, $Res Function(DrivingLessonsState) then) =
      _$DrivingLessonsStateCopyWithImpl<$Res, DrivingLessonsState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isLessonLoading,
      List<UserLesson> userLessons,
      List<UserCourseData> userCourses,
      bool hasError,
      DateTime day});
}

/// @nodoc
class _$DrivingLessonsStateCopyWithImpl<$Res, $Val extends DrivingLessonsState>
    implements $DrivingLessonsStateCopyWith<$Res> {
  _$DrivingLessonsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLessonLoading = null,
    Object? userLessons = null,
    Object? userCourses = null,
    Object? hasError = null,
    Object? day = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLessonLoading: null == isLessonLoading
          ? _value.isLessonLoading
          : isLessonLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      userLessons: null == userLessons
          ? _value.userLessons
          : userLessons // ignore: cast_nullable_to_non_nullable
              as List<UserLesson>,
      userCourses: null == userCourses
          ? _value.userCourses
          : userCourses // ignore: cast_nullable_to_non_nullable
              as List<UserCourseData>,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $DrivingLessonsStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isLessonLoading,
      List<UserLesson> userLessons,
      List<UserCourseData> userCourses,
      bool hasError,
      DateTime day});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$DrivingLessonsStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLessonLoading = null,
    Object? userLessons = null,
    Object? userCourses = null,
    Object? hasError = null,
    Object? day = null,
  }) {
    return _then(_$_Initial(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLessonLoading: null == isLessonLoading
          ? _value.isLessonLoading
          : isLessonLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      userLessons: null == userLessons
          ? _value._userLessons
          : userLessons // ignore: cast_nullable_to_non_nullable
              as List<UserLesson>,
      userCourses: null == userCourses
          ? _value._userCourses
          : userCourses // ignore: cast_nullable_to_non_nullable
              as List<UserCourseData>,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.isLoading,
      required this.isLessonLoading,
      required final List<UserLesson> userLessons,
      required final List<UserCourseData> userCourses,
      required this.hasError,
      required this.day})
      : _userLessons = userLessons,
        _userCourses = userCourses;

  @override
  final bool isLoading;
  @override
  final bool isLessonLoading;
  final List<UserLesson> _userLessons;
  @override
  List<UserLesson> get userLessons {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userLessons);
  }

  final List<UserCourseData> _userCourses;
  @override
  List<UserCourseData> get userCourses {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userCourses);
  }

  @override
  final bool hasError;
  @override
  final DateTime day;

  @override
  String toString() {
    return 'DrivingLessonsState(isLoading: $isLoading, isLessonLoading: $isLessonLoading, userLessons: $userLessons, userCourses: $userCourses, hasError: $hasError, day: $day)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLessonLoading, isLessonLoading) ||
                other.isLessonLoading == isLessonLoading) &&
            const DeepCollectionEquality()
                .equals(other._userLessons, _userLessons) &&
            const DeepCollectionEquality()
                .equals(other._userCourses, _userCourses) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.day, day) || other.day == day));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isLessonLoading,
      const DeepCollectionEquality().hash(_userLessons),
      const DeepCollectionEquality().hash(_userCourses),
      hasError,
      day);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements DrivingLessonsState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool isLessonLoading,
      required final List<UserLesson> userLessons,
      required final List<UserCourseData> userCourses,
      required final bool hasError,
      required final DateTime day}) = _$_Initial;

  @override
  bool get isLoading;
  @override
  bool get isLessonLoading;
  @override
  List<UserLesson> get userLessons;
  @override
  List<UserCourseData> get userCourses;
  @override
  bool get hasError;
  @override
  DateTime get day;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
