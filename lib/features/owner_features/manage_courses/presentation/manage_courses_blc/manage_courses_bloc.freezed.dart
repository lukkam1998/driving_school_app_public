// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'manage_courses_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ManageCoursesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCourses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCoursesEvent value) loadCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCoursesEvent value)? loadCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCoursesEvent value)? loadCourses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManageCoursesEventCopyWith<$Res> {
  factory $ManageCoursesEventCopyWith(
          ManageCoursesEvent value, $Res Function(ManageCoursesEvent) then) =
      _$ManageCoursesEventCopyWithImpl<$Res, ManageCoursesEvent>;
}

/// @nodoc
class _$ManageCoursesEventCopyWithImpl<$Res, $Val extends ManageCoursesEvent>
    implements $ManageCoursesEventCopyWith<$Res> {
  _$ManageCoursesEventCopyWithImpl(this._value, this._then);

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
    extends _$ManageCoursesEventCopyWithImpl<$Res, _$LoadCoursesEvent>
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
    return 'ManageCoursesEvent.loadCourses()';
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
  }) {
    return loadCourses();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCourses,
  }) {
    return loadCourses?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCourses,
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
  }) {
    return loadCourses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCoursesEvent value)? loadCourses,
  }) {
    return loadCourses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCoursesEvent value)? loadCourses,
    required TResult orElse(),
  }) {
    if (loadCourses != null) {
      return loadCourses(this);
    }
    return orElse();
  }
}

abstract class LoadCoursesEvent implements ManageCoursesEvent {
  const factory LoadCoursesEvent() = _$LoadCoursesEvent;
}

/// @nodoc
mixin _$ManageCoursesState {
  List<Course> get courses => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get actionSucced => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ManageCoursesStateCopyWith<ManageCoursesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManageCoursesStateCopyWith<$Res> {
  factory $ManageCoursesStateCopyWith(
          ManageCoursesState value, $Res Function(ManageCoursesState) then) =
      _$ManageCoursesStateCopyWithImpl<$Res, ManageCoursesState>;
  @useResult
  $Res call(
      {List<Course> courses, bool isLoading, bool hasError, bool actionSucced});
}

/// @nodoc
class _$ManageCoursesStateCopyWithImpl<$Res, $Val extends ManageCoursesState>
    implements $ManageCoursesStateCopyWith<$Res> {
  _$ManageCoursesStateCopyWithImpl(this._value, this._then);

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
    Object? actionSucced = null,
  }) {
    return _then(_value.copyWith(
      courses: null == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<Course>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      actionSucced: null == actionSucced
          ? _value.actionSucced
          : actionSucced // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $ManageCoursesStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Course> courses, bool isLoading, bool hasError, bool actionSucced});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ManageCoursesStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
    Object? isLoading = null,
    Object? hasError = null,
    Object? actionSucced = null,
  }) {
    return _then(_$_Initial(
      courses: null == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<Course>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      actionSucced: null == actionSucced
          ? _value.actionSucced
          : actionSucced // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required final List<Course> courses,
      required this.isLoading,
      required this.hasError,
      required this.actionSucced})
      : _courses = courses;

  final List<Course> _courses;
  @override
  List<Course> get courses {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courses);
  }

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final bool actionSucced;

  @override
  String toString() {
    return 'ManageCoursesState(courses: $courses, isLoading: $isLoading, hasError: $hasError, actionSucced: $actionSucced)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other._courses, _courses) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.actionSucced, actionSucced) ||
                other.actionSucced == actionSucced));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_courses),
      isLoading,
      hasError,
      actionSucced);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements ManageCoursesState {
  const factory _Initial(
      {required final List<Course> courses,
      required final bool isLoading,
      required final bool hasError,
      required final bool actionSucced}) = _$_Initial;

  @override
  List<Course> get courses;
  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  bool get actionSucced;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
