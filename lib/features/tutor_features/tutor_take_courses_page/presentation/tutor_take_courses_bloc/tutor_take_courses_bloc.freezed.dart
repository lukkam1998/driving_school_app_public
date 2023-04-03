// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tutor_take_courses_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TutorTakeCoursesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserCourse userCourse) takeCourse,
    required TResult Function() loadUnapprovedCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserCourse userCourse)? takeCourse,
    TResult? Function()? loadUnapprovedCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserCourse userCourse)? takeCourse,
    TResult Function()? loadUnapprovedCourses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(TakeCourseEvent value) takeCourse,
    required TResult Function(LoadUnapprovedCoursesEvent value)
        loadUnapprovedCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(TakeCourseEvent value)? takeCourse,
    TResult? Function(LoadUnapprovedCoursesEvent value)? loadUnapprovedCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(TakeCourseEvent value)? takeCourse,
    TResult Function(LoadUnapprovedCoursesEvent value)? loadUnapprovedCourses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorTakeCoursesEventCopyWith<$Res> {
  factory $TutorTakeCoursesEventCopyWith(TutorTakeCoursesEvent value,
          $Res Function(TutorTakeCoursesEvent) then) =
      _$TutorTakeCoursesEventCopyWithImpl<$Res, TutorTakeCoursesEvent>;
}

/// @nodoc
class _$TutorTakeCoursesEventCopyWithImpl<$Res,
        $Val extends TutorTakeCoursesEvent>
    implements $TutorTakeCoursesEventCopyWith<$Res> {
  _$TutorTakeCoursesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$TutorTakeCoursesEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'TutorTakeCoursesEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserCourse userCourse) takeCourse,
    required TResult Function() loadUnapprovedCourses,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserCourse userCourse)? takeCourse,
    TResult? Function()? loadUnapprovedCourses,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserCourse userCourse)? takeCourse,
    TResult Function()? loadUnapprovedCourses,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(TakeCourseEvent value) takeCourse,
    required TResult Function(LoadUnapprovedCoursesEvent value)
        loadUnapprovedCourses,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(TakeCourseEvent value)? takeCourse,
    TResult? Function(LoadUnapprovedCoursesEvent value)? loadUnapprovedCourses,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(TakeCourseEvent value)? takeCourse,
    TResult Function(LoadUnapprovedCoursesEvent value)? loadUnapprovedCourses,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TutorTakeCoursesEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$TakeCourseEventCopyWith<$Res> {
  factory _$$TakeCourseEventCopyWith(
          _$TakeCourseEvent value, $Res Function(_$TakeCourseEvent) then) =
      __$$TakeCourseEventCopyWithImpl<$Res>;
  @useResult
  $Res call({UserCourse userCourse});

  $UserCourseCopyWith<$Res> get userCourse;
}

/// @nodoc
class __$$TakeCourseEventCopyWithImpl<$Res>
    extends _$TutorTakeCoursesEventCopyWithImpl<$Res, _$TakeCourseEvent>
    implements _$$TakeCourseEventCopyWith<$Res> {
  __$$TakeCourseEventCopyWithImpl(
      _$TakeCourseEvent _value, $Res Function(_$TakeCourseEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userCourse = null,
  }) {
    return _then(_$TakeCourseEvent(
      null == userCourse
          ? _value.userCourse
          : userCourse // ignore: cast_nullable_to_non_nullable
              as UserCourse,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCourseCopyWith<$Res> get userCourse {
    return $UserCourseCopyWith<$Res>(_value.userCourse, (value) {
      return _then(_value.copyWith(userCourse: value));
    });
  }
}

/// @nodoc

class _$TakeCourseEvent implements TakeCourseEvent {
  const _$TakeCourseEvent(this.userCourse);

  @override
  final UserCourse userCourse;

  @override
  String toString() {
    return 'TutorTakeCoursesEvent.takeCourse(userCourse: $userCourse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TakeCourseEvent &&
            (identical(other.userCourse, userCourse) ||
                other.userCourse == userCourse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userCourse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TakeCourseEventCopyWith<_$TakeCourseEvent> get copyWith =>
      __$$TakeCourseEventCopyWithImpl<_$TakeCourseEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserCourse userCourse) takeCourse,
    required TResult Function() loadUnapprovedCourses,
  }) {
    return takeCourse(userCourse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserCourse userCourse)? takeCourse,
    TResult? Function()? loadUnapprovedCourses,
  }) {
    return takeCourse?.call(userCourse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserCourse userCourse)? takeCourse,
    TResult Function()? loadUnapprovedCourses,
    required TResult orElse(),
  }) {
    if (takeCourse != null) {
      return takeCourse(userCourse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(TakeCourseEvent value) takeCourse,
    required TResult Function(LoadUnapprovedCoursesEvent value)
        loadUnapprovedCourses,
  }) {
    return takeCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(TakeCourseEvent value)? takeCourse,
    TResult? Function(LoadUnapprovedCoursesEvent value)? loadUnapprovedCourses,
  }) {
    return takeCourse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(TakeCourseEvent value)? takeCourse,
    TResult Function(LoadUnapprovedCoursesEvent value)? loadUnapprovedCourses,
    required TResult orElse(),
  }) {
    if (takeCourse != null) {
      return takeCourse(this);
    }
    return orElse();
  }
}

abstract class TakeCourseEvent implements TutorTakeCoursesEvent {
  const factory TakeCourseEvent(final UserCourse userCourse) =
      _$TakeCourseEvent;

  UserCourse get userCourse;
  @JsonKey(ignore: true)
  _$$TakeCourseEventCopyWith<_$TakeCourseEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadUnapprovedCoursesEventCopyWith<$Res> {
  factory _$$LoadUnapprovedCoursesEventCopyWith(
          _$LoadUnapprovedCoursesEvent value,
          $Res Function(_$LoadUnapprovedCoursesEvent) then) =
      __$$LoadUnapprovedCoursesEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadUnapprovedCoursesEventCopyWithImpl<$Res>
    extends _$TutorTakeCoursesEventCopyWithImpl<$Res,
        _$LoadUnapprovedCoursesEvent>
    implements _$$LoadUnapprovedCoursesEventCopyWith<$Res> {
  __$$LoadUnapprovedCoursesEventCopyWithImpl(
      _$LoadUnapprovedCoursesEvent _value,
      $Res Function(_$LoadUnapprovedCoursesEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadUnapprovedCoursesEvent implements LoadUnapprovedCoursesEvent {
  const _$LoadUnapprovedCoursesEvent();

  @override
  String toString() {
    return 'TutorTakeCoursesEvent.loadUnapprovedCourses()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadUnapprovedCoursesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserCourse userCourse) takeCourse,
    required TResult Function() loadUnapprovedCourses,
  }) {
    return loadUnapprovedCourses();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserCourse userCourse)? takeCourse,
    TResult? Function()? loadUnapprovedCourses,
  }) {
    return loadUnapprovedCourses?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserCourse userCourse)? takeCourse,
    TResult Function()? loadUnapprovedCourses,
    required TResult orElse(),
  }) {
    if (loadUnapprovedCourses != null) {
      return loadUnapprovedCourses();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(TakeCourseEvent value) takeCourse,
    required TResult Function(LoadUnapprovedCoursesEvent value)
        loadUnapprovedCourses,
  }) {
    return loadUnapprovedCourses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(TakeCourseEvent value)? takeCourse,
    TResult? Function(LoadUnapprovedCoursesEvent value)? loadUnapprovedCourses,
  }) {
    return loadUnapprovedCourses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(TakeCourseEvent value)? takeCourse,
    TResult Function(LoadUnapprovedCoursesEvent value)? loadUnapprovedCourses,
    required TResult orElse(),
  }) {
    if (loadUnapprovedCourses != null) {
      return loadUnapprovedCourses(this);
    }
    return orElse();
  }
}

abstract class LoadUnapprovedCoursesEvent implements TutorTakeCoursesEvent {
  const factory LoadUnapprovedCoursesEvent() = _$LoadUnapprovedCoursesEvent;
}

/// @nodoc
mixin _$TutorTakeCoursesState {
  List<Tuple3<UserCourse, Course, UserRestrictedModel>> get coursesToTake =>
      throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool? get hasTakingSucced => throw _privateConstructorUsedError;
  bool? get hasTakingFailed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TutorTakeCoursesStateCopyWith<TutorTakeCoursesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorTakeCoursesStateCopyWith<$Res> {
  factory $TutorTakeCoursesStateCopyWith(TutorTakeCoursesState value,
          $Res Function(TutorTakeCoursesState) then) =
      _$TutorTakeCoursesStateCopyWithImpl<$Res, TutorTakeCoursesState>;
  @useResult
  $Res call(
      {List<Tuple3<UserCourse, Course, UserRestrictedModel>> coursesToTake,
      bool isFetching,
      bool hasError,
      bool? hasTakingSucced,
      bool? hasTakingFailed});
}

/// @nodoc
class _$TutorTakeCoursesStateCopyWithImpl<$Res,
        $Val extends TutorTakeCoursesState>
    implements $TutorTakeCoursesStateCopyWith<$Res> {
  _$TutorTakeCoursesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coursesToTake = null,
    Object? isFetching = null,
    Object? hasError = null,
    Object? hasTakingSucced = freezed,
    Object? hasTakingFailed = freezed,
  }) {
    return _then(_value.copyWith(
      coursesToTake: null == coursesToTake
          ? _value.coursesToTake
          : coursesToTake // ignore: cast_nullable_to_non_nullable
              as List<Tuple3<UserCourse, Course, UserRestrictedModel>>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      hasTakingSucced: freezed == hasTakingSucced
          ? _value.hasTakingSucced
          : hasTakingSucced // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasTakingFailed: freezed == hasTakingFailed
          ? _value.hasTakingFailed
          : hasTakingFailed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $TutorTakeCoursesStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Tuple3<UserCourse, Course, UserRestrictedModel>> coursesToTake,
      bool isFetching,
      bool hasError,
      bool? hasTakingSucced,
      bool? hasTakingFailed});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$TutorTakeCoursesStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coursesToTake = null,
    Object? isFetching = null,
    Object? hasError = null,
    Object? hasTakingSucced = freezed,
    Object? hasTakingFailed = freezed,
  }) {
    return _then(_$_Initial(
      coursesToTake: null == coursesToTake
          ? _value._coursesToTake
          : coursesToTake // ignore: cast_nullable_to_non_nullable
              as List<Tuple3<UserCourse, Course, UserRestrictedModel>>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      hasTakingSucced: freezed == hasTakingSucced
          ? _value.hasTakingSucced
          : hasTakingSucced // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasTakingFailed: freezed == hasTakingFailed
          ? _value.hasTakingFailed
          : hasTakingFailed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required final List<Tuple3<UserCourse, Course, UserRestrictedModel>>
          coursesToTake,
      required this.isFetching,
      required this.hasError,
      required this.hasTakingSucced,
      required this.hasTakingFailed})
      : _coursesToTake = coursesToTake;

  final List<Tuple3<UserCourse, Course, UserRestrictedModel>> _coursesToTake;
  @override
  List<Tuple3<UserCourse, Course, UserRestrictedModel>> get coursesToTake {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coursesToTake);
  }

  @override
  final bool isFetching;
  @override
  final bool hasError;
  @override
  final bool? hasTakingSucced;
  @override
  final bool? hasTakingFailed;

  @override
  String toString() {
    return 'TutorTakeCoursesState(coursesToTake: $coursesToTake, isFetching: $isFetching, hasError: $hasError, hasTakingSucced: $hasTakingSucced, hasTakingFailed: $hasTakingFailed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other._coursesToTake, _coursesToTake) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.hasTakingSucced, hasTakingSucced) ||
                other.hasTakingSucced == hasTakingSucced) &&
            (identical(other.hasTakingFailed, hasTakingFailed) ||
                other.hasTakingFailed == hasTakingFailed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_coursesToTake),
      isFetching,
      hasError,
      hasTakingSucced,
      hasTakingFailed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements TutorTakeCoursesState {
  const factory _Initial(
      {required final List<Tuple3<UserCourse, Course, UserRestrictedModel>>
          coursesToTake,
      required final bool isFetching,
      required final bool hasError,
      required final bool? hasTakingSucced,
      required final bool? hasTakingFailed}) = _$_Initial;

  @override
  List<Tuple3<UserCourse, Course, UserRestrictedModel>> get coursesToTake;
  @override
  bool get isFetching;
  @override
  bool get hasError;
  @override
  bool? get hasTakingSucced;
  @override
  bool? get hasTakingFailed;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
