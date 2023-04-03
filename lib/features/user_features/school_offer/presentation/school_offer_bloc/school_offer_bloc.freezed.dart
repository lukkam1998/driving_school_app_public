// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'school_offer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SchoolOfferEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCourses,
    required TResult Function() loadUserCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCourses,
    TResult? Function()? loadUserCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCourses,
    TResult Function()? loadUserCourses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCoursesEvent value) loadCourses,
    required TResult Function(LoadUserCoursesEvent value) loadUserCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCoursesEvent value)? loadCourses,
    TResult? Function(LoadUserCoursesEvent value)? loadUserCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCoursesEvent value)? loadCourses,
    TResult Function(LoadUserCoursesEvent value)? loadUserCourses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchoolOfferEventCopyWith<$Res> {
  factory $SchoolOfferEventCopyWith(
          SchoolOfferEvent value, $Res Function(SchoolOfferEvent) then) =
      _$SchoolOfferEventCopyWithImpl<$Res, SchoolOfferEvent>;
}

/// @nodoc
class _$SchoolOfferEventCopyWithImpl<$Res, $Val extends SchoolOfferEvent>
    implements $SchoolOfferEventCopyWith<$Res> {
  _$SchoolOfferEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadCoursesEventCopyWith<$Res> {
  factory _$$LoadCoursesEventCopyWith(
          _$LoadCoursesEvent value, $Res Function(_$LoadCoursesEvent) then) =
      __$$LoadCoursesEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadCoursesEventCopyWithImpl<$Res>
    extends _$SchoolOfferEventCopyWithImpl<$Res, _$LoadCoursesEvent>
    implements _$$LoadCoursesEventCopyWith<$Res> {
  __$$LoadCoursesEventCopyWithImpl(
      _$LoadCoursesEvent _value, $Res Function(_$LoadCoursesEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadCoursesEvent implements LoadCoursesEvent {
  const _$LoadCoursesEvent();

  @override
  String toString() {
    return 'SchoolOfferEvent.loadCourses()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadCoursesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCourses,
    required TResult Function() loadUserCourses,
  }) {
    return loadCourses();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCourses,
    TResult? Function()? loadUserCourses,
  }) {
    return loadCourses?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCourses,
    TResult Function()? loadUserCourses,
    required TResult orElse(),
  }) {
    if (loadCourses != null) {
      return loadCourses();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCoursesEvent value) loadCourses,
    required TResult Function(LoadUserCoursesEvent value) loadUserCourses,
  }) {
    return loadCourses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCoursesEvent value)? loadCourses,
    TResult? Function(LoadUserCoursesEvent value)? loadUserCourses,
  }) {
    return loadCourses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCoursesEvent value)? loadCourses,
    TResult Function(LoadUserCoursesEvent value)? loadUserCourses,
    required TResult orElse(),
  }) {
    if (loadCourses != null) {
      return loadCourses(this);
    }
    return orElse();
  }
}

abstract class LoadCoursesEvent implements SchoolOfferEvent {
  const factory LoadCoursesEvent() = _$LoadCoursesEvent;
}

/// @nodoc
abstract class _$$LoadUserCoursesEventCopyWith<$Res> {
  factory _$$LoadUserCoursesEventCopyWith(_$LoadUserCoursesEvent value,
          $Res Function(_$LoadUserCoursesEvent) then) =
      __$$LoadUserCoursesEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadUserCoursesEventCopyWithImpl<$Res>
    extends _$SchoolOfferEventCopyWithImpl<$Res, _$LoadUserCoursesEvent>
    implements _$$LoadUserCoursesEventCopyWith<$Res> {
  __$$LoadUserCoursesEventCopyWithImpl(_$LoadUserCoursesEvent _value,
      $Res Function(_$LoadUserCoursesEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadUserCoursesEvent implements LoadUserCoursesEvent {
  const _$LoadUserCoursesEvent();

  @override
  String toString() {
    return 'SchoolOfferEvent.loadUserCourses()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadUserCoursesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCourses,
    required TResult Function() loadUserCourses,
  }) {
    return loadUserCourses();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCourses,
    TResult? Function()? loadUserCourses,
  }) {
    return loadUserCourses?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCourses,
    TResult Function()? loadUserCourses,
    required TResult orElse(),
  }) {
    if (loadUserCourses != null) {
      return loadUserCourses();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCoursesEvent value) loadCourses,
    required TResult Function(LoadUserCoursesEvent value) loadUserCourses,
  }) {
    return loadUserCourses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCoursesEvent value)? loadCourses,
    TResult? Function(LoadUserCoursesEvent value)? loadUserCourses,
  }) {
    return loadUserCourses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCoursesEvent value)? loadCourses,
    TResult Function(LoadUserCoursesEvent value)? loadUserCourses,
    required TResult orElse(),
  }) {
    if (loadUserCourses != null) {
      return loadUserCourses(this);
    }
    return orElse();
  }
}

abstract class LoadUserCoursesEvent implements SchoolOfferEvent {
  const factory LoadUserCoursesEvent() = _$LoadUserCoursesEvent;
}

/// @nodoc
mixin _$SchoolOfferState {
  List<Tuple2<Course, Promotion?>> get courses =>
      throw _privateConstructorUsedError;
  List<Tuple2<UserCourse, Course>> get userCourse =>
      throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SchoolOfferStateCopyWith<SchoolOfferState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchoolOfferStateCopyWith<$Res> {
  factory $SchoolOfferStateCopyWith(
          SchoolOfferState value, $Res Function(SchoolOfferState) then) =
      _$SchoolOfferStateCopyWithImpl<$Res, SchoolOfferState>;
  @useResult
  $Res call(
      {List<Tuple2<Course, Promotion?>> courses,
      List<Tuple2<UserCourse, Course>> userCourse,
      bool isFetching,
      bool hasError});
}

/// @nodoc
class _$SchoolOfferStateCopyWithImpl<$Res, $Val extends SchoolOfferState>
    implements $SchoolOfferStateCopyWith<$Res> {
  _$SchoolOfferStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
    Object? userCourse = null,
    Object? isFetching = null,
    Object? hasError = null,
  }) {
    return _then(_value.copyWith(
      courses: null == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<Tuple2<Course, Promotion?>>,
      userCourse: null == userCourse
          ? _value.userCourse
          : userCourse // ignore: cast_nullable_to_non_nullable
              as List<Tuple2<UserCourse, Course>>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $SchoolOfferStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Tuple2<Course, Promotion?>> courses,
      List<Tuple2<UserCourse, Course>> userCourse,
      bool isFetching,
      bool hasError});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$SchoolOfferStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
    Object? userCourse = null,
    Object? isFetching = null,
    Object? hasError = null,
  }) {
    return _then(_$_Initial(
      courses: null == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<Tuple2<Course, Promotion?>>,
      userCourse: null == userCourse
          ? _value._userCourse
          : userCourse // ignore: cast_nullable_to_non_nullable
              as List<Tuple2<UserCourse, Course>>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required final List<Tuple2<Course, Promotion?>> courses,
      required final List<Tuple2<UserCourse, Course>> userCourse,
      required this.isFetching,
      required this.hasError})
      : _courses = courses,
        _userCourse = userCourse;

  final List<Tuple2<Course, Promotion?>> _courses;
  @override
  List<Tuple2<Course, Promotion?>> get courses {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courses);
  }

  final List<Tuple2<UserCourse, Course>> _userCourse;
  @override
  List<Tuple2<UserCourse, Course>> get userCourse {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userCourse);
  }

  @override
  final bool isFetching;
  @override
  final bool hasError;

  @override
  String toString() {
    return 'SchoolOfferState(courses: $courses, userCourse: $userCourse, isFetching: $isFetching, hasError: $hasError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other._courses, _courses) &&
            const DeepCollectionEquality()
                .equals(other._userCourse, _userCourse) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_courses),
      const DeepCollectionEquality().hash(_userCourse),
      isFetching,
      hasError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements SchoolOfferState {
  const factory _Initial(
      {required final List<Tuple2<Course, Promotion?>> courses,
      required final List<Tuple2<UserCourse, Course>> userCourse,
      required final bool isFetching,
      required final bool hasError}) = _$_Initial;

  @override
  List<Tuple2<Course, Promotion?>> get courses;
  @override
  List<Tuple2<UserCourse, Course>> get userCourse;
  @override
  bool get isFetching;
  @override
  bool get hasError;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
